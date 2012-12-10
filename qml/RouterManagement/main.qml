import QtQuick 2.0
import "content"

Rectangle {
    id: mainWindow

    width: 960; height: 700
    radius: 20
    smooth: true

    MouseArea {
        id: mouseArea
        anchors.fill: parent

    }
    //窗口背景
    Image {
        id: bgImage
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
        smooth: true
        source: "content/images/bg2.png"

    //显示主页面
    DisplayPageLeft {
        id: firstDisplay
        x: buttonRow.x
        y: 280
        visible: true
    }
    DisplayPageMiddle {
        id: secondDisplay
        x: 70; y: 280
        visible: false
    }
    DisplayPageRight {
        id: thirdDisplay
        x: 70; y: 280
        visible: false
    }
    //显示mainButton
    Row {
        id: buttonRow
        spacing: 10
        x: 70; y: 100
        MainButton {
            id: firstButton

            buttonTitle: "  Router Status"
            imageInitial: "images/r_state_h.png"
            imageEnter: "images/selected2.png"
            imageSelect: "images/selected.png"
            imageChange: "images/selected.png"
            onClicked: firstDisplay.visible = true,
                       secondDisplay.visible = false,
                       thirdDisplay.visible = false,
                       firstButton.imageChange = "images/selected.png",
                       secondButton.imageChange = "images/p_setting_h.png",
                       thirdButton.imageChange = "images/s_setting_h.png"
        }
        MainButton {
            id: secondButton
            buttonTitle: "  Password Setting"
            imageInitial: "images/p_setting_h.png"
            imageEnter: "images/selected2.png"
            imageSelect: "images/selected.png"
            imageChange: "images/p_setting_h.png"
            onClicked: secondDisplay.visible = true,
                       firstDisplay.visible = false,
                       thirdDisplay.visible = false ,
                       secondButton.imageChange = "images/selected.png",
                       firstButton.imageChange = "images/r_state_h.png",
                       thirdButton.imageChange = "images/s_setting_h.png"

        }
        MainButton {
            id: thirdButton
            buttonTitle: "  Router Setting"
            imageInitial: "images/s_setting_h.png"
            imageEnter: "images/selected2.png"
            imageSelect: "images/selected.png"
            imageChange: "images/s_setting_h.png"
            onClicked: thirdDisplay.visible = true,
                       firstDisplay.visible = false,
                       secondDisplay.visible = false,
                       thirdButton.imageChange = "images/selected.png",
                       firstButton.imageChange = "images/r_state_h.png",
                       secondButton.imageChange = "images/p_setting_h.png"
        }
    }
    //显示bottomButton
    Row {
        id: buttonRow1
        spacing: 10
        x: 600; y: 600
        BottomButton {
            id: firstButton1
            buttonTitle: "Device Check"
            imageSource: "images/attachdevice_normal.png"
            imageSourceEnter: "images/attachdevice_hover.png"
            imageSourceExit: "images/attachdevice_selected.png"
            onClicked: imageSourceSelect = "images/attachdevice_selected.png"
        }
        BottomButton {
            id: secondButton1
            buttonTitle: " New Router"
            imageSource: "images/switch_normal.png"
            imageSourceEnter: "images/switch_hover.png"
            imageSourceExit: "images/switch_selected.png"
            onClicked: imageSourceSelect = "images/switch_selected.png"
        }
        BottomButton {
            id: thirdButton1
            buttonTitle: "  Advanced"
            imageSource: "images/advance_normal.png"
            imageSourceEnter: "images/advance_hover.png"
            imageSourceExit: "images/advance_selected.png"
            onClicked: imageSourceSelect = "images/advance_selected.png"
        }
    }
    //显示版本信息
    Text {
        id: versions
        x: 90; y: 660
        font.pointSize: 10
        color: "white"
        opacity: 0.5
        font.italic: true
        text: "Version: 1.0 on-NETWORKS all rights reserved.  Powered by SiteView"
    }
    }

    //显示关闭和帮助信息
    HelpAndQuitBtn {
        id: helpBtn
        x: 904; y: 0

        changeImage: "images/help_normal.png"
        hoverImage: "images/help_hover.png"
        normalImage: "images/help_normal.png"
        selectedImage: "images/help_selected.png"

    }
    HelpAndQuitBtn {
        id: exitBtn
        x: 932; y: 0

        changeImage: "images/exit_normal.png"
        hoverImage: "images/exit_hover.png"
        normalImage: "images/exit_normal.png"
        selectedImage: "images/exit_selected.png"
        onClicked: Qt.quit()
    }
}



