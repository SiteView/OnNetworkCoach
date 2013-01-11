import QtQuick 1.0
import "../images"

Item {
    id: container

    property string rectWidth: ""  //定义变量Item的宽度
    property string rectHeight: ""  //定义变量Item的高度
    property string normalImage: ""  //定义变量图片的正常状态
    property string hoverImage: ""  //图片的聚焦状态
    property string downImage: ""  //图片的按下状态
    property string btnImage: ""

    signal clicked();  //

    width: rectWidth; height: rectHeight

    Image {
        id: image; source: "../images/" + btnImage
    }

    MouseArea {
        id: mouseArea

        anchors.fill: parent
        hoverEnabled: true
        onEntered: btnImage = hoverImage
        onExited: btnImage = normalImage
        onClicked: { container.clicked(), btnImage = downImage }
    }
}
