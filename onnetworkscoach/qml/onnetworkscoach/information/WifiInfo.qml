import QtQuick 1.1
import "../component"

Rectangle {
    id: container

    width: mainWindow.width - categoryButtons.width; height: middleWindow.height
    anchors.left: categoryButtons.right
    visible: color1 == "green" ? true : false
    color: "white"

    Column {
        spacing: 10; x: 10
        TextInfo { id: text1; textInfo: "Wireless Network"; font.bold: true; color: "green" }
        Column {
            spacing: 10
            Row {
                CheckBox { id: check0; isTicked: "true" }
                TextInfo { id: text2; textInfo: " Enable SSID Broadcast " }
            }
            TextInfo { id: text3; textInfo: "Name(SSID):" }
            TextInfo { id: text4; textInfo: "Region:" }
            TextInfo { id: text5; textInfo: "Channel:" }
            TextInfo { id: text6; textInfo: "Mode:" }
        }
        Image { width: container.width; height: 1; source: "../images/liteblue.gif"; smooth: true }
        TextInfo { id: text7; textInfo: "Security Options"; font.bold: true; color: "green" }
        Grid {
            rows: 3; /*columnSpacing: 10;*/ /*rowSpacing: 10*/
            spacing: 10
            CheckBox {
                id: check1
                onTicked: {
                    check2.isTicked = "false"; check3.isTicked = "false"
                }
            }
            TextInfo { id: text8; textInfo: "None" }
            CheckBox {
                id: check2
                isTicked: "true"
                onTicked: {
                    check1.isTicked = "false"; check3.isTicked = "false"
                }
            }
            TextInfo { id: text9; textInfo: "WPA2-PSK [AES]" }
            CheckBox {
                id: check3
                onTicked: {
                    check1.isTicked = "false"; check2.isTicked = "false"
                }
            }
            TextInfo { id: text10; textInfo: "WPA-PSK [TKIP] + WPA2-PSK [AES]" }
        }
        Image { width: container.width; height: 1; source: "../images/liteblue.gif"; smooth: true }
        TextInfo { id: text11; textInfo: "Security Options (WPA-PSK + WPA2-PSK)"; font.bold: true; color: "green" }
        Row {
            TextInfo { id: text12; textInfo: "passwod:         " }
            InputRect { id: passwordRect; textContent: "  siteview" }
            TextInfo { id: text13; textInfo: "(8 to 63 chars Or 64 HEX numbers)" }
        }
        Image { width: container.width; height: 1; source: "../images/liteblue.gif"; smooth: true }
    }
    Column {
        spacing: 8; x: text2.x + 300; y: 48
        InputRect { id: inputRect0; textContent: " onnetworks"}
        InputRect { id: inputRect1; textContent: " China"}
        InputRect { id: inputRect2; textContent: " Auto"}
        InputRect { id: inputRect3; textContent: " Max 65 Mbps"}
    }
    Column {
        id: fixPart; spacing: 10; x: 10
        anchors { right: container.right; rightMargin: 10; bottom: container.bottom; bottomMargin: 10 }
        //two buttons
        Row {
            id: buttons3; spacing: 10
            ButtonInfo { id: apply3; btnName: "Apply" }
            ButtonInfo { id: cance3; btnName: "Cancel" }
        }
    }
}







