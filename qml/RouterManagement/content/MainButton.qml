import QtQuick 2.0

Item {
    id: container
    width: 260
    height: 170

    property color onHoverColor: "white"
    property string imageInitial: ""
    property string imageEnter: ""
    property string imageSelect: ""
    property string imageChange: ""
    property string buttonTitle: ""

    signal clicked()

    Image {
        smooth: true
        source: imageInitial
    }
    Image {
        id: buttonImage
        smooth: true
        source: imageChange
    }

    Text {
        id: title
        x: 20; y: 10
        font.family: "Times New Roman"
        font.pointSize: 20
        font.bold: true
        color: "white"
        smooth: true
        text: buttonTitle
    }

    MouseArea {
        id: mainButtonMouseArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: container.clicked(), imageChange = imageSelect
        onEntered: if(imageChange == imageSelect) imageChange = imageSelect
                   else imageChange = imageEnter
        onExited: if(imageChange == imageSelect) imageChange = imageSelect
                  else imageChange = imageInitial
//        drag.target: container
//        drag.axis: Drag.XAxis
//        drag.minimumX: 0
//        drag.maximumX: mainWindow.width
    }
}



