import QtQuick 2.0

Image {
    id: routerSetPage

    property string fontPointSize: "15"
    property string fontPointSize2: "10"

    smooth: true
    source: "images/s_setting_c.png"

    //显示左列
    Column {
        id: leftColumn
        anchors.centerIn: routerSetPage.Center
        x: 50; y: 50; spacing: 20
        Text { font.pointSize: fontPointSize; text: "Ban Minimization"; color: "#FFFFFF" }
        Text { font.pointSize: fontPointSize; text: "Auto Start" ; color: "#FFFFFF" }
        Text { font.pointSize: fontPointSize; text: "Auto Update"; color: "#FFFFFF" }
    }
    //显示右列
    Column {
        id: rightColumn
        x: 400; y: 50
        spacing: 20
        JudegeButton {
            id: minimizationJude
            xDefault: "0"
            labelText: "Yes"
            onClick: if(xDefault == 0) {xDefault = 40; labelText = "No"}
                     else {xDefault = 0; labelText = "Yes"}
        }
        JudegeButton {
            id: autostartJude
            xDefault: "40"
            labelText: "No"
            onClick: if(xDefault == 0) {xDefault = 40; labelText = "No"}
                     else {xDefault = 0; labelText = "Yes"}
        }
        JudegeButton {
            id: updateJude
            xDefault: "0"
            labelText: "Yes"
            onClick: if(xDefault == 0) {xDefault = 40; labelText = "No"}
                     else {xDefault = 0; labelText = "Yes"}
        }
    }
    //显示保存和取消保存功能
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
