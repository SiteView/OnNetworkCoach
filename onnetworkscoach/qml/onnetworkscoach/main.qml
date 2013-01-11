import QtQuick 1.0
import "core"
import "information"
import "component"
import "images"

Rectangle {
    id: mainWindow

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

    width: 800; height: 600

    //Item1: topWindow on the top portion of the screen
    Rectangle {
        id: topWindow

        width: mainWindow.width; height: 80
        color: "black"
        z: 1

        //实现窗体拖动
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

    //Item2: middleWindow on the middle of the screen
    Rectangle {
        id: middleWindow

        width: mainWindow.width  //width is 500
        anchors.top: topWindow.bottom; anchors.bottom: bottomWindow.top
        color: "#69a1d5"

        gradient: Gradient {
            GradientStop {
                position: 0.83;
                color: "#509fe4";
            }
            GradientStop {
                position: 1.00;
                color: "#ffffff";
            }
        }
    }

    //Item3: bottomWindow on the bottom of the screen
    Rectangle {
        id: bottomWindow

        width: mainWindow.width; height: 20
        anchors.bottom: mainWindow.bottom
        color: "gray"
        z: 1
    }

    //MaxMinQuitBtn display
    Item {
        z: topWindow.z
        Row {
            id: minMaxQuitBtn

            //layoutDirection: "RightToLeft"
            //anchors.right: topWindow.right
            x: 800 - 28 - 39  /*mainWindow.height - mixBtn.width - quitBtn.width*/

            /*TODO: help
            MaxMinQuitBtn {
                id: help
            }*/
            MaxMinQuitBtn {
                id: mixBtn

                rectWidth: "28"; rectHeight: "20";

                btnImage: "icon_min_normal.png"
                normalImage: "icon_min_normal.png"
                hoverImage: "icon_min_hover.png"
                downImage: "icon_min_down.png"

                onClicked: {
                    mainwindow.showMinimized()
                }
            }

            MaxMinQuitBtn {
                id: quitBtn

                rectWidth: "39"; rectHeight: "20";

                btnImage: "icon_close_normal.png"
                normalImage: "icon_close_normal.png"
                hoverImage: "icon_close_hover.png"
                downImage: "icon_close_down.png"

                onClicked: mainwindow.close()
            }

            /*maxBtn
            MaxMinQuitBtn {
                id: maxBtn

                rectWidth: "28"; rectHeight: "20";

                btnImage: "icon_max_normal.png"
                normalImage: "icon_max_normal.png"
                hoverImage: "icon_max_hover.png"
                downImage: "icon_max_down.png"
            }*/
        }
    }

    //Logo
    Image {
        id: logo; smooth: true

        source: "images/logo.png"        
        anchors { verticalCenter:topWindow.verticalCenter; left: topWindow.left; leftMargin: 20 }
        z: topWindow.z

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
        id: categoryButtons; y: topWindow.height; width: 200; height: middleWindow.height
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
    InternetInfo { id: internetPage; anchors { top: topWindow.bottom; left: categoryButtons.right; right: mainWindow.right; bottom: bottomWindow.top } visible: false }
    WifiInfo { id: wifisettingPage; anchors { top: topWindow.bottom; left: categoryButtons.right; right: mainWindow.right; bottom: bottomWindow.top } visible: false }
    PasswordInfo { id: pwdsettingPage; anchors { top: topWindow.bottom; left: categoryButtons.right; right: mainWindow.right; bottom: bottomWindow.top } visible: false }
    Rectangle { id: networkmapPage; anchors { top: topWindow.bottom; left: categoryButtons.right; right: mainWindow.right; bottom: bottomWindow.top } visible: false }
    RouterInfo { id: routersettingPage; anchors { top: topWindow.bottom; left: categoryButtons.right; right: mainWindow.right; bottom: bottomWindow.top } visible: false }
    Rectangle { id: supportPage; anchors { top: topWindow.bottom; left: categoryButtons.right; right: mainWindow.right; bottom: bottomWindow.top } visible: false }

    //MainButtons
    Grid {
        id: mainButtons

        columns: 3
        spacing: 10
        anchors.centerIn: middleWindow

        MainButton {
            id: internet
            image: "internet_o"
            initialImage: "internet_o"
            hoverImage: "internet_h"
            onClicked: {
                mainButtons.visible = false
                categoryButtons.visible = true
                image0 = "category-select-bg.png"; image1 = image2 = image3 = image4 = image5 =  "category-normal-bg.png"
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
                image1 = "category-select-bg.png"; image0 = image2 = image3 = image4 = image5 =  "category-normal-bg.png"
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
                image2 = "category-select-bg.png"; image1 = image0 = image3 = image4 = image5 = "category-normal-bg.png"
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
                image3 = "category-select-bg.png"; image1 = image2 = image0 = image4 = image5 = "category-normal-bg.png"
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
                image4 = "category-select-bg.png"; image1 = image2 = image3 = image0 = image5 = "category-normal-bg.png"
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
                image5 = "category-select-bg.png"; image1 = image2 = image3 = image4 = image0 = "category-normal-bg.png"
                supportPressed()
            }
        }
    }
}

