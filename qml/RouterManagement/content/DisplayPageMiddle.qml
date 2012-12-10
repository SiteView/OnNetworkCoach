import QtQuick 2.0

Image {
    id: passwordSetting
    property string fontPointSize: "15"
    property color textColor: "white"
    smooth: true
    source: "images/p_setting_c.png"

    //显示密码设置
    //无线访问设置
    Text {
        id: setWirelessPwd

        x: 30; y: 40
        font.pointSize: 20
        font.bold: true
        color: textColor
        text: "Set Wireless Password"
    }
    Column {
        x: 30; y: 70
        spacing: 5
        Text {
            id: newPwd
            font.pointSize: fontPointSize
            horizontalAlignment: Text.AlignRight
            color: textColor
            text: "                New Password"
        }
        Text {
            id: againPwd

            font.pointSize: fontPointSize
            horizontalAlignment: Text.AlignRight
            color: textColor
            text: "              Password Again"
        }
    }
    //路由器访问设置
    Text {
        id: setRouterPwd

        x: 30; y: 120
        font.pointSize: 20
        font.bold: true
        color: textColor
        text: "Set Router Password"
    }
    Column {
        x: 30; y: 150
        spacing: 8

        Text {
            id: originalPwd

            font.pointSize: fontPointSize
            horizontalAlignment: Text.AlignRight
            color: textColor
            text: "                    Original"
        }
        Text {
            id: newPwd1

            font.pointSize: fontPointSize
            horizontalAlignment: Text.AlignRight
            color: textColor
            text: "                New Password"
        }
        Text {
            id: againPwd1

            font.pointSize: fontPointSize
            horizontalAlignment: Text.AlignRight
            color: textColor
            text: "              Password Again"
        }
    }
    Column {
        id: wirelessPwd
        x: 360; y: 68
        spacing: 10
        InputRectangle {
            id: pwdNew
        }
        InputRectangle {
            id: pwdAgain
        }
    }
    //显示输入框
    Column {
        id: routerPwd
        x: 360; y: 150
        spacing: 8
        InputRectangle {
            id: pwdOriginal
        }
        InputRectangle {
            id: pwdNew1
        }
        InputRectangle {
            id: pwdAgain1
        }
    }

    Row {
        x: 600; y: 220
        BottomButton {
            id: firstButton3
            buttonTitle: "     Save"
            imageSource: "images/tick_normal.png"
            imageSourceEnter: "images/tick_hover.png"
            imageSourceExit: "images/tick_normal.png"
            onClicked: imageSourceSelect = "images/tick_selected.png"
        }
        BottomButton {
            id: secondButton3
            buttonTitle: "    Cancel"
            imageSource: "images/cross_normal.png"
            imageSourceEnter: "images/cross_hover.png"
            imageSourceExit: "images/cross_normal.png"
            onClicked: imageSourceSelect = "images/cross_selected.png"
        }
    }
}
