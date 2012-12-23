import QtQuick 2.0
import "../component"

Item {
    id: container

    width: mainWindow.width - categoryButtons.width; height: mainWindow.height - categoryButtons.y
    anchors.left: categoryButtons.right
    visible: color1 == "green" ? true : false

    Column {
        spacing: 15; x: 10
        TextInfo { id: text0; textInfo: "Wireless Settings"; color: "green" }

        //two buttons
        Row {
            id: buttons; spacing: 10
            ButtonInfo { id: apply; btnName: "Apply" }
            ButtonInfo { id: cancel; btnName: "Cancel" }
        }
        Image { width: container.width; height: 1; source: "../images/liteblue.gif"; smooth: true }
        TextInfo { id: text1; textInfo: "Wireless Network"; font.bold: true }
        Column {
            spacing: 15
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
        TextInfo { id: text7; textInfo: "Security Options"; font.bold: true }
        Grid {
            rows: 3; columnSpacing: 10; rowSpacing: 15
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
        TextInfo { id: text11; textInfo: "Security Options (WPA-PSK + WPA2-PSK)"; font.bold: true }
        Row {
            TextInfo { id: text12; textInfo: "passwod:         " }
            InputRect { id: passwordRect; textContent: "  siteview" }
            TextInfo { id: text13; textInfo: "(8 to 63 chars Or 64 HEX numbers)" }
        }
        Image { width: container.width; height: 1; source: "../images/liteblue.gif"; smooth: true }
    }
    Column {
        spacing: 10; x: text2.x + 300; y: 150
        InputRect { id: inputRect0; textContent: " onnetworks"}
        InputRect { id: inputRect1; textContent: " China"}
        InputRect { id: inputRect2; textContent: " Auto"}
        InputRect { id: inputRect3; textContent: " Max 65 Mbps"}
    }
}







