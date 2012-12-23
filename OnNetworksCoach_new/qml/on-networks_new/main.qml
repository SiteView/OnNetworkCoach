import QtQuick 2.0
import "core"
import "information"
import "component"

Rectangle {
    id: mainWindow; width: 850; height: 700

    property alias visible0: internetPage.visible
    property alias visible1: wifisettingPage.visible
    property alias visible2: pwdsettingPage.visible
    property alias visible3: networkmapPage.visible
    property alias visible4: routersettingPage.visible
    property alias visible5: supportPage.visible

    property alias color0: categoryButton_internet.color
    property alias color1: categoryButton_wifisetting.color
    property alias color2: categoryButton_passwordsetting.color
    property alias color3: categoryButton_networkmap.color
    property alias color4: categoryButton_routersetting.color
    property alias color5: categoryButton_support.color
    property alias color6: backButton.color

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


    Rectangle {
        id: topWindow
        width: mainWindow.width; height: 100
        color: "#000000"
    }
    //设置背景图片
    Rectangle {
        id: bottomWindow
        width: parent.width; height: 600
        color: "#69a1d5"
        gradient: Gradient {
            GradientStop {
                position: 0.21;
                color: "#69a1d5";
            }
            GradientStop {
                position: 1.00;
                color: "#ffffff";
            }
        }
        anchors.bottom: mainWindow.bottom
//        Image {
//            id: bgImage
//            anchors.fill: parent
//            smooth: true
//            source: "images/bg.png"
//        }
    }

    //Logo
    Image {
        id: logo; y: 20; smooth: true
        source: "images/logo.png"
        anchors.left: mainButtons.left
    }
    //语言选择
    LanguageList {
        id: languageList
        anchors { right: parent.right; rightMargin: 10; top: language.bottom }
        visible: false
    }
    Rectangle {
        id: language
        width: 125; height: 20; color: "white"
        border { color: "black"; width: 1 }
        anchors { right: parent.right; rightMargin: 10; top: parent.top; topMargin: 50 }
        Text {
            id: languageDisplay; smooth: true
            font { family: "Helvetica"; pointSize: 12 }
            text: "English"
        }

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onEntered: language.border.color = "blue"
            onExited: language.border.color = "black", languageDisplay.visible = true
            onClicked: {
                languageList.visible == true ? languageList.visible = false : languageList.visible = true
            }
        }
    }

    /*
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
                text: " input your want"
                font { family: "Helvetica"; pointSize: 15 }
                cursorPosition: 1
            }
            Image {
                id:findImage; smooth: true; opacity: .6
                source: "images/find.png"
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
    */
    //category buttons
    Rectangle {
        id: categoryButtons; y: 100; width: 200; height: mainWindow.height - 100
        color: "#69a1d5"
        visible: false
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
            CategoryButton {
                id: backButton
                textContent: "Back MainPage"
                onPressed:
                    backButton.color = "white",
                    mainButtons.visible = true,
                    categoryButtons.visible = internetPage.visible = wifisettingPage.visible =
                    pwdsettingPage.visible = networkmapPage.visible =
                    routersettingPage.visible = supportPage.visible = false
            }
        }
    }

    InternetInfo { id: internetPage; y: 140; anchors.left: categoryButtons.right; anchors.right: mainWindow.right; anchors.bottom: mainWindow.bottom; visible: false }
    WifiInfo { id: wifisettingPage; y: 140; anchors.left: categoryButtons.right; anchors.right: mainWindow.right; anchors.bottom: mainWindow.bottom; visible: false }
    PasswordInfo { id: pwdsettingPage; y: 140; anchors.left: categoryButtons.right; anchors.right: mainWindow.right; anchors.bottom: mainWindow.bottom; visible: false }
    NetworkmapInfo { id: networkmapPage; y: 140; anchors.left: categoryButtons.right; anchors.right: mainWindow.right; anchors.bottom: mainWindow.bottom; visible: false }
    RouterInfo { id: routersettingPage; y: 140; anchors.left: categoryButtons.right; anchors.right: mainWindow.right; anchors.bottom: mainWindow.bottom; visible: false }
    SupportInfo { id: supportPage; y: 140; anchors.left: categoryButtons.right; anchors.right: mainWindow.right; anchors.bottom: mainWindow.bottom; visible: false }

    //主页面,六个button
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
                categoryButtons.visible = true
                color0 = "green"; color1 = color2 = color3 = color4 = color5 = color6 = "white"
                internetPressed()
            }
        }
        MainButton {
            id: wifiSetting
            image: "wifisetting1"
            initialImage: "wifisetting1"
            hoverImage: "wifisetting3"
            onClicked: {
                mainButtons.visible = false
                categoryButtons.visible = true
                color1 = "green"; color0 = color2 = color3 = color4 = color5 = color6 = "white"
                wifisettingPressed()
            }
        }
        MainButton {
            id: pwdsetting
            image: "passwordsetting1"
            initialImage: "passwordsetting1"
            hoverImage: "passwordsetting3"
            onClicked: {
                mainButtons.visible = false
                categoryButtons.visible = true
                color2 = "green"; color1 = color0 = color3 = color4 = color5 = color6 = "white"
                paswordsettingPressed()
            }
        }
        MainButton {
            id: networkMap
            image: "networkmap1"
            initialImage: "networkmap1"
            hoverImage: "networkmap3"
            onClicked: {
                mainButtons.visible = false
                categoryButtons.visible = true
                color3 = "green"; color1 = color2 = color0 = color4 = color5 = color6 = "white"
                networkmapsettingPressed()
            }
        }
        MainButton {
            id: routersetting
            image: "routersetting1"
            initialImage: "routersetting1"
            hoverImage: "routersetting3"
            onClicked: {
                mainButtons.visible = false
                categoryButtons.visible = true
                color4 = "green"; color1 = color2 = color3 = color0 = color5 = color6 = "white"
                routersettingPressed()
            }
        }
        MainButton {
            id: support
            image: "support1"
            initialImage: "support1"
            hoverImage: "support3"
            onClicked: {
                mainButtons.visible = false
                categoryButtons.visible = true
                color5 = "green"; color1 = color2 = color3 = color4 = color0 = color6 = "white"
                supportPressed()
            }
        }
    }



}


