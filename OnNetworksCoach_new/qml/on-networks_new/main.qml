import QtQuick 2.0
import "core"
import "information"

Rectangle {
    id: mainWindow; width: 960; height: 700

    property alias flag0: internetPage.visible
    property alias flag1: wifisettingPage.visible
    property alias flag2: pwdsettingPage.visible
    property alias flag3: networkmapPage.visible
    property alias flag4: routersettingPage.visible
    property alias flag5: supportPage.visible

    //设置背景图片
    Image {
        id: bgImage
        anchors.fill: parent
        smooth: true
        source: "images/bg.png"
    }

    //语言选择
    Rectangle {
        id: language
        width: 125; height: 20; color: "white"
        border { color: "black"; width: 1 }
        anchors { right: parent.right; rightMargin: 10; top: parent.top; topMargin: 50 }

        Text {
            id: languageName; anchors.fill: parent; anchors.leftMargin: 5
            text: qsTr("hello")
            font { family: "Helvetica"; pointSize: 10 }
        }

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onEntered: language.border.color = "blue"
            onExited: language.border.color = "black", languageName.visible = true
        }
    }

    //搜索框
    Rectangle {
        id: rectangle
        anchors { right: parent.right; rightMargin: 10; top: parent.top; topMargin: 80 }

        width: 200; height: 24
        border.color: "black"; border.width: 1
        Row {
            anchors.fill: parent
            TextInput {
                id: findContent
                width: 180; color: "lightblue"; smooth: true
                text: "input your want"
                font { family: "Helvetica"; pointSize: 15 }
                cursorPosition: 1
            }
            Image {
                id:findImage; smooth: true; opacity: .6
                source: "images/find.gif"
            }
        }
        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onEntered: rectangle.border.color = "blue", findImage.opacity = .8
            onExited: {
                rectangle.border.color = "black", findImage.opacity = .6
                findContent.cursorVisible = false
                if(findContent.text == "") findContent.text = "input your want"
            }
            onClicked: {
                findImage.opacity = 1
                findContent.text = ""
                findContent.cursorVisible = true
            }
        }
    }
    //router name
    Text {
        id: routerName
        anchors { right: rectangle.left; rightMargin: 10;  top: parent.top; topMargin: 80 }
        text: "N150R WiFi Router"
        font { family: "Helvetica"; bold: true; pointSize: 16 }
    }

    //
    ListModel {
        id: categoriesModel
        ListElement { name: "internet" }
        ListElement { name: "wifi setting" }
        ListElement { name: "password setting" }
        ListElement { name: "network map" }
        ListElement { name: "router setting" }
        ListElement { name: "support" }
    }

    Row {
        Rectangle {
            id: categoryRect; y: 120
            width: 160; height: mainWindow.height - categoryRect.y
            color: "#21242b"
            visible: false

            ListView {
                anchors.fill: parent
                model: categoriesModel
                delegate: CategoryDelegate {}
            }
        }
        Rectangle {
            y: categoryRect.y
            width: 1; height: categoryRect.height; color: "white"
        }

    }

    InternetInfo { id: internetPage; x: 100; y: 100; visible: false }
    WifiInfo { id: wifisettingPage; x: 200; y: 100; visible: false }
    PasswordInfo { id: pwdsettingPage; x: 200; y: 100; visible: false }
    NetworkmapInfo { id: networkmapPage; x: 200; y: 100; visible: false }
    RouterInfo { id: routersettingPage; x: 200; y: 100; visible: false }
    SupportInfo { id: supportPage; x: 200; y: 100; visible: false }

    Grid {
        id: mainButtons
        columns: 3
        spacing: 10
        anchors.centerIn: parent

        MainButton {
            id: internet
            image: "internet1"
            initialImage: "internet1"
            hoverImage: "internet3"
            onClicked: {
                mainButtons.visible = false
                btnscal.opacity = 1
                categoryRect.visible = true
            }
        }
        MainButton {
            id: wifiSetting
            image: "wifisetting1"
            initialImage: "wifisetting1"
            hoverImage: "wifisetting3"
            onClicked: {
                mainButtons.visible = false
                btnscal.opacity = 1
                categoryRect.visible = true
            }
        }
        MainButton {
            id: pwdsetting
            image: "passwordsetting1"
            initialImage: "passwordsetting1"
            hoverImage: "passwordsetting3"
            onClicked: {
                mainButtons.visible = false
                btnscal.opacity = 1
                categoryRect.visible = true
            }
        }
        MainButton {
            id: networkMap
            image: "networkmap1"
            initialImage: "networkmap1"
            hoverImage: "networkmap3"
            onClicked: {
                mainButtons.visible = false
                btnscal.opacity = 1
                categoryRect.visible = true
            }
        }
        MainButton {
            id: routersetting
            image: "routersetting1"
            initialImage: "routersetting1"
            hoverImage: "routersetting3"
            onClicked: {
                mainButtons.visible = false
                btnscal.opacity = 1
                categoryRect.visible = true
            }
        }
        MainButton {
            id: support
            image: "support1"
            initialImage: "support1"
            hoverImage: "support3"
            onClicked: {
                mainButtons.visible = false
                btnscal.opacity = 1
                categoryRect.visible = true
            }
        }
    }

    Image {
        id: btnscal
        smooth: true
        source: "images/btnscal.jpg"
        opacity: 0
        anchors { bottom: parent.bottom; right: parent.right }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                mainButtons.visible = true
                categoryRect.visible = false
            }
        }
    }
}


