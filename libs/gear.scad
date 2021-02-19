module gear_polygon(Da, Z, Zdraw = 0) {
    function list_fix(inList) = [for(L = inList, a = L) a];

    function arc(R, aStart, aStep, aEnd) =
        [for (a = [aStart : aStep : aEnd]) [
            R * cos(a),
            R * sin(a)
        ]];

    function edge(R, a0, dStart, dStep, dEnd) =
        [for (a = [dStart : dStep : dEnd]) [
            R * cos(a0 + a) + R * a * PI * sin(a0 + a) / 180,
            R * sin(a0 + a) - R * a * PI * cos(a0 + a) / 180,
        ]];

    function gear_dots(Z, Zdraw, m, D) =
        let(
            Ra = 0.5 * m * (Z + 2),
            Rb = 0.5 * D * cos(20),
            Rf = 0.5 * m * (Z - 2.5),

            dEdge = sqrt(pow(Ra/Rb, 2) - 1) * 180 / PI,
            aEdge = dEdge - acos(Rb/Ra),
            aEdgeRoot = tan(20) * 180 / PI - 20,

            aSector = 360 / Z,
            aTop = aSector / 2  - 2 * (aEdge - aEdgeRoot),
            aBottom = (aSector / 2 - 2 * aEdgeRoot) / 2,
            aTopStart = aBottom + aEdge,
            aBottomOut = aSector - aBottom,
            aTopEnd = aBottomOut - aEdge,

            fNumber = ( is_num($fn) && $fn > 2 ) ? round($fn) : 2,

            aTopStep = aTop / fNumber,
            aBottomStep = 2 * aBottom / fNumber
        )
        list_fix([ for(z = [0 : 1 : Zdraw - 1]) list_fix([
            arc(Rf, z * aSector, aBottomStep, z * aSector + aBottom),
            edge(Rb, z * aSector + aBottom, 0, dEdge/fNumber, dEdge),
            arc(Ra, z*aSector+aTopStart, aTopStep, z*aSector+aTopEnd),
            edge(Rb, z * aSector + aBottomOut, -dEdge, dEdge/fNumber, 0),
            arc(Rf, z*aSector+aBottomOut, aBottomStep, z*aSector+aSector)
        ]) ]);

    Z = ( is_num(Z) && Z > 3 ) ? round(Z) : 3;
    Zdraw = ( is_num(Zdraw) && Zdraw >= 1 && Zdraw <= Z ) ? round(Zdraw) : Z;

    m = Da / (Z + 2);
    D = m * Z;

    gear_list = gear_dots(Z, Zdraw, m, D);
    gear = Z != Zdraw ? list_fix([[[0,0]], gear_list]) : gear_list;

    polygon(gear);
}
