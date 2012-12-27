import QtQuick 1.0
import "../NetmapCalc.js" as CalcEngine
import "../component"

Rectangle {
    id: container
    width: mainWindow.width - categoryButtons.width; height: mainWindow.height - categoryButtons.y
    color: "#deeade"
    anchors.left: categoryButtons.right
    Image {
        id: router_image
        x: 300; y: 200
        source: "../images/netmap/router.png"
    }
    Image {
        id: image00
        source: "../images/netmap/internet_b1.png"
    }
    Image {
        id: image01
        source: "../images/netmap/internet_b1.png"
    }
    Image {
        id: image02
        source: "../images/netmap/internet_b1.png"
    }
    Image {
        id: image03
        source: "../images/netmap/internet_b1.png"
    }
    Image {
        id: image04
        source: "../images/netmap/internet_b1.png"
    }
    Image {
        id: image05
        source: "../images/netmap/internet_b1.png"
    }
    Image {
        id: image06
        source: "../images/netmap/internet_b1.png"
    }
    Image {
        id: image07
        source: "../images/netmap/internet_b1.png"
    }

    Row {
        x: 380
        spacing: 10
        anchors.bottom: parent.bottom; anchors.bottomMargin: 10;
        //TestButton { id: btn0; serial: "0" }
        NetmapPic { id: btn1; serial: "7" }
        NetmapPic { id: btn2; serial: "6" }
        NetmapPic { id: btn3; serial: "5" }
        NetmapPic { id: btn4; serial: "4" }
        NetmapPic { id: btn5; serial: "3" }
        NetmapPic { id: btn6; serial: "2" }
        NetmapPic { id: btn7; serial: "1" }

    }
}
