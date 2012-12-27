import QtQuick 1.0
import "../NetmapCalc.js" as Tempjs

Rectangle {
    id: testRect
    width: 20; height: 20


    property string serial: ""

    color: "green"
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: {
            Tempjs.display(serial);
        }
    }
}
