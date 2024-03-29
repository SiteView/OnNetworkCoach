import QtQuick 1.0
import "core"
import "information"
import "component"
import "images"

Rectangle {
    id: mainWindow; width: 850; height: 700

    property alias visible0: internetPage.visible
    property alias visible1: wifisettingPage.visible
    property alias visible2: pwdsettingPage.visible
    property alias visible3: networkmapPage.visible
    property alias visible4: routersettingPage.visible
    property alias visible5: supportPage.visible

    property alias image0: categoryButton_internet.image
    property alias image1: categoryButton_wifisetting.image
    property alias image2: categoryButton_passwordsetting.image
    property alias image3: categoryButton_networkmap.image
    property alias image4: categoryButton_routersetting.image
    property alias image5: categoryButton_support.image

    signal internetPressed()
    signal wifisettingPressed()
    signal paswordsettingPressed()
    signal networkmapsettingPressed()
    signal routersettingPressed()
    signal supportPressed()

    onInternetPressed: internetPage.visible = true
    onWifisettingPressed: wifisettingPage.visible = true
    onPaswordsettingPressed: pwdsettingPage.visible = true
    onNetworkmapsettingPressed: networkmapPage.visible = true
    onRoutersettingPressed: routersettingPage.visible = true
    onSupportPressed: supportPage.visible = true


    //topWindow
    Rectangle {
        id: topWindow
        width: mainWindow.width; height: 100
        color: "#000000"

        MouseArea {
            id: mouseRegion
            anchors.fill: parent;
            property variant clickPos: "1,1"
            onPressed: {
                clickPos  = Qt.point(mouse.x,mouse.y)
            }
            onPositionChanged: {
                var delta = Qt.point(mouse.x-clickPos.x, mouse.y-clickPos.y)
                mainwindow.pos = Qt.point(mainwindow.pos.x+delta.x,
                                          mainwindow.pos.y+delta.y)
            }
        }
    }
    //bottomWindow,the main window
    Rectangle {
        id: bottomWindow
        width: parent.width; height: 600
        anchors.top: topWindow.bottom; anchors.bottom: mainWindow.bottom
        color: "#69a1d5"
        gradient: Gradient {
            GradientStop {
                position: 0.33;
                color: "#509fe4";
            }
            GradientStop {
                position: 1.00;
                color: "#ffffff";
            }
        }
    }
    //Logo
    Image {
        id: logo; y: 20; smooth: true
        source: "images/logo.png"
        anchors.left: mainButtons.left
        anchors.verticalCenter: topWindow.verticalCenter


        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: {
                mainButtons.visible = true,
                        categoryButtons.visible = internetPage.visible = wifisettingPage.visible =
                        pwdsettingPage.visible = networkmapPage.visible =
                        routersettingPage.visible = supportPage.visible = false
            }
        }
    }

    //LanguageDisplay
    Rectangle {
        id: language; width: 125; height: 20
        color: "#e8e3e3"
        border { color: "black"; width: 1 }
        anchors { right: parent.right; rightMargin: 10; bottom: logo.bottom }
        Text {
            id: languageDisplay; smooth: true
            font { family: "Helvetica"; pointSize: 12 }
            text: "English"
        }
        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onEntered: language.border.color = "blue"
            onExited: language.border.color = "black"
            onClicked: {
                languageList.visible == true ? languageList.visible = false : languageList.visible = true
            }
        }
    }
    //List
    LanguageList {
        id: languageList; z: 1
        anchors { right: mainWindow.right; rightMargin: 10; top: language.bottom }
        visible: false
    }

    //CategoryButtons
    Rectangle {
        id: categoryButtons; y: 100; width: 200; height: mainWindow.height - 100
        visible: false; color: "#deeade"
        Column{
            CategoryButton {
                id: categoryButton_internet
                textContent: "Internet"
            }
            Rectangle { width: 200; height: 1; color: "gray"}
            CategoryButton {
                id: categoryButton_wifisetting
                textContent: "Wifi Setting"
            }
            Rectangle { width: 200; height: 1; color: "gray"}
            CategoryButton {
                id: categoryButton_passwordsetting
                textContent: "Password Setting"
            }
            Rectangle { width: 200; height: 1; color: "gray"}
            CategoryButton {
                id: categoryButton_networkmap
                textContent: "Network Map"
            }
            Rectangle { width: 200; height: 1; color: "gray"}
            CategoryButton {
                id: categoryButton_routersetting
                textContent: "Router Setting"
            }
            Rectangle { width: 200; height: 1; color: "gray"}
            CategoryButton {
                id: categoryButton_support
                textContent: "Support"
            }
            Rectangle { width: 200; height: 1; color: "gray"}
        }
    }

    //CategoryInfomation
    InternetInfo { id: internetPage; y: 140; anchors.left: categoryButtons.right; anchors.right: mainWindow.right; anchors.bottom: mainWindow.bottom; visible: false }
    WifiInfo { id: wifisettingPage; y: 140; anchors.left: categoryButtons.right; anchors.right: mainWindow.right; anchors.bottom: mainWindow.bottom; visible: false }
    PasswordInfo { id: pwdsettingPage; y: 140; anchors.left: categoryButtons.right; anchors.right: mainWindow.right; anchors.bottom: mainWindow.bottom; visible: false }
    NetworkmapInfo { id: networkmapPage; y: 140; anchors.left: categoryButtons.right; anchors.right: mainWindow.right; anchors.bottom: mainWindow.bottom; visible: false }
    RouterInfo { id: routersettingPage; y: 140; anchors.left: categoryButtons.right; anchors.right: mainWindow.right; anchors.bottom: mainWindow.bottom; visible: false }
    SupportInfo { id: supportPage; y: 140; anchors.left: categoryButtons.right; anchors.right: mainWindow.right; anchors.bottom: mainWindow.bottom; visible: false }

    //MainButtons
    Grid {
        id: mainButtons
        columns: 3
        spacing: 10
        anchors.centerIn: bottomWindow

        MainButton {
            id: internet
            image: "internet_o"
            initialImage: "internet_o"
            hoverImage: "internet_h"
            onClicked: {
                mainButtons.visible = false
                categoryButtons.visible = true
                image0 = "sub-menu-select-bg.gif"; image1 = image2 = image3 = image4 = image5 =  "sub-menu-select-bg.png"
                internetPressed()
            }
        }
        MainButton {
            id: wifiSetting
            image: "wifisetting_o"
            initialImage: "wifisetting_o"
            hoverImage: "wifisetting_h"
            onClicked: {
                mainButtons.visible = false
                categoryButtons.visible = true
                image1 = "sub-menu-select-bg.gif"; image0 = image2 = image3 = image4 = image5 =   "sub-menu-select-bg.png"
                wifisettingPressed()
            }
        }
        MainButton {
            id: pwdsetting
            image: "passwordsetting_o"
            initialImage: "passwordsetting_o"
            hoverImage: "passwordsetting_h"
            onClicked: {
                mainButtons.visible = false
                categoryButtons.visible = true
                image2 = "sub-menu-select-bg.gif"; image1 = image0 = image3 = image4 = image5 = "sub-menu-select-bg.png"
                paswordsettingPressed()
            }
        }
        MainButton {
            id: networkMap
            image: "networkmap_o"
            initialImage: "networkmap_o"
            hoverImage: "networkmap_h"
            onClicked: {
                mainButtons.visible = false
                categoryButtons.visible = true
                image3 = "sub-menu-select-bg.gif"; image1 = image2 = image0 = image4 = image5 = "sub-menu-select-bg.png"
                networkmapsettingPressed()
            }
        }
        MainButton {
            id: routersetting
            image: "routersetting_o"
            initialImage: "routersetting_o"
            hoverImage: "routersetting_h"
            onClicked: {
                mainButtons.visible = false
                categoryButtons.visible = true
                image4 = "sub-menu-select-bg.gif"; image1 = image2 = image3 = image0 = image5 = "sub-menu-select-bg.png"
                routersettingPressed()
            }
        }
        MainButton {
            id: support
            image: "support_o"
            initialImage: "support_o"
            hoverImage: "support_h"
            onClicked: {
                mainButtons.visible = false
                categoryButtons.visible = true
                image5 = "sub-menu-select-bg.gif"; image1 = image2 = image3 = image4 = image0 = "sub-menu-select-bg.png"
                supportPressed()
            }
        }
    }

    Row {
        id: rightTopBtn

        anchors { right: mainWindow.right; top: mainWindow.top; }
        //layoutDirection: Qt.RightToLeft  //让显示从右开始,易于定位

        RightTopBtn { id: minBtn; rectWidth: "28"; rectHeight: "20";
            btnImage: "../images/icon_min_normal.png"
            normalImage: "../images/icon_min_normal.png"
            hoverImage: "../images/icon_min_hover.png"
            downImage: "../images/icon_min_down.png" }
        RightTopBtn { id: maxBtn; rectWidth: "28"; rectHeight: "20";
            btnImage: "../images/icon_max_normal.png"
            normalImage: "../images/icon_max_normal.png"
            hoverImage: "../images/icon_max_hover.png"
            downImage: "../images/icon_max_down.png"
        }
        RightTopBtn { id: closeBtn; rectWidth: "39"; rectHeight: "20";
            btnImage: "../images/icon_close_normal.png"
            normalImage: "../images/icon_close_normal.png"
            hoverImage: "../images/icon_close_hover.png"
            downImage: "../images/icon_close_down.png"
            onClicked: Qt.quit()}
    }
}


