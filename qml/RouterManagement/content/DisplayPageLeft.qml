import QtQuick 2.0

Image {
    id: routerState

    property string fontPointSize: "15"
    smooth: true
    source: "images/r_state_c.png"
    //以列显示
    Column {
        id: leftColumn
        x: 50; y: 50

        spacing: 20
        Text {
            font.pointSize: fontPointSize
            color: "white"
            text: "Router Name :"
        }
        Text {
            font.pointSize: fontPointSize
            color: "white"
            text: "Connected Duration :"
        }
        Text {
            font.pointSize: fontPointSize
            color: "white"
            text: "Connection Speed :"
        }
        Text {
            font.pointSize: fontPointSize
            color: "white"
            text: "Safety Assessment :"
        }
    }
    Column {
        id: rightColumn
        spacing: 20
        x: 350; y: 50
        Text {
            id: routerName
            font.pointSize: fontPointSize
            font.italic: true
            color: "white"
            text: "on-networks"
        }
        Text {
            font.pointSize: fontPointSize
            color: "white"
            text: "2 h 48 m"  //时长显示改进
        }
        Text {
            font.pointSize: fontPointSize
            color: "white"
            text: "Download 45Kb/s---Upload 10Kb/s"  //速度显示改进
        }
        Rectangle {
            id: riskDisplay
            width: 160; height: 20
            border.color: "white"
            border.width: 1

            Rectangle {
                anchors.left: riskDisplay.left
                width: parent.width - 80
                height: parent.height
                color: "red"
            }

            Text {
                anchors.left: riskDisplay.right
                font.pointSize: fontPointSize
                font.bold: true
                color: "white"
                text: "  Unsafe!!"
            }
        }
    }
}



