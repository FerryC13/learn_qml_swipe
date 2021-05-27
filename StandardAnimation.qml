import QtQuick 2.0

NumberAnimation {
    from: 0
    to: 0.7
    property: "opacity";
    easing.type: Easing.InOutQuad;
    duration: 1500
}
