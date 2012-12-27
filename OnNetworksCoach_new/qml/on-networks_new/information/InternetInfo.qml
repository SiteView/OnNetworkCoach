import QtQuick 1.0
import "../component"

Rectangle {
    id: container
    width: mainWindow.width - categoryButtons.width; height: mainWindow.height - categoryButtons.y
    color: "#deeade"
    anchors.left: categoryButtons.right
    // visible: onInternetPressed ? true : false
    Column {
        spacing: 10; z: 1
        Column {
            id: column0
            x: 10; spacing: 10
            TextInfo { id: text1; textInfo: "Does your Internet connection require a login?"; font.bold: true }
            Row {
                CheckBox { id: check0
                    onTicked: {
                        check1.isTicked = "false"
                    }
                }
                TextInfo { id: text2; textInfo: "Yes" }
            }
            Row {
                CheckBox { id: check1; isTicked: "true"
                    onTicked: {
                        check0.isTicked = "false"
                    }
                }
                TextInfo { id: text3; textInfo: "No" }
            }

            Image { id: image0; width: container.width; height: 1; source: "../images/liteblue.gif"; smooth: true }
        }
        Flickable {
            id: flickable1; x: 10; y: image0.y + 10
            width: container.width ; height: categoryButtons.height - image0.y - 100
            contentWidth: column1.width; contentHeight: column1.height
            boundsBehavior: Flickable.StopAtBounds

            Column {
                id: column1; spacing: 15
                Grid {
                    id: position0
                    columns: 2; /*rowSpacing: 15*/
                    TextInfo { id: text4; textInfo: "Account Name" }
                    TextInfo { id: text5; textInfo: "(If Required)" }
                    TextInfo { id: text6; textInfo: "Domain Name" }
                    TextInfo { id: text7; textInfo: "(If Required)" }
                }
                Image { width: container.width; height: 1; source: "../images/liteblue.gif"; smooth: true }
                TextInfo { id: text8; textInfo: "Internet IP Address"; font.bold: true }
                Row {
                    CheckBox {
                        id: check2; isTicked: "true"
                        onTicked: {
                            check3.isTicked = "false"
                        }
                    }
                    TextInfo { id: text9; textInfo: "Get Dynamically from ISP" }
                }
                Row {
                    CheckBox {
                        id: check3
                        onTicked: {
                            check2.isTicked = "false"
                        }
                    }
                    TextInfo { id: text10; textInfo: "Use Static IP Address" }
                }
                Column {
                    id: position1
                    x: 10; spacing: 15
                    TextInfo { id: text11; textInfo: "IP Address" }
                    TextInfo { id: text12; textInfo: "IP Subnet Mask" }
                    TextInfo { id: text13; textInfo: "Gateway IP Address" }
                }
                Image { width: container.width; height: 1; source: "../images/liteblue.gif"; smooth: true }
                TextInfo { id: text14; textInfo: "Domain Name Server (DNS) Address"; font.bold: true }
                Row {
                    CheckBox {
                        id: check4; isTicked: "true"
                        onTicked: {
                            check5.isTicked = "false"
                        }
                    }
                    TextInfo { id: text15; textInfo: "Get Dynamically from ISP" }
                }
                Row {
                    CheckBox {
                        id: check5
                        onTicked: {
                            check4.isTicked = "false"
                        }
                    }
                    TextInfo { id: text16; textInfo: "Use Static DNS Address" }
                }
                Column {
                    id: position2; x: 10;
                    spacing: 15
                    TextInfo { id: text18; textInfo: "Primary DNS" }
                    TextInfo { id: text19; textInfo: "Secondary DNS" }
                }
                Image { width: container.width; height: 1; source: "../images/liteblue.gif"; smooth: true }
                TextInfo { id: text20; textInfo: "Router MAC Address"; font.bold: true }
                Row {
                    CheckBox {
                        id: check6
                        isTicked: "true"
                        onTicked: {
                            check7.isTicked = "false"; check8.isTicked = "false"
                        }
                    }
                    TextInfo { id: text21; textInfo: "Use Default Address" }
                }
                Row {
                    CheckBox {
                        id: check7
                        onTicked: {
                            check6.isTicked = "false"; check8.isTicked = "false"
                        }
                    }
                    TextInfo { id: text22; textInfo: "Use Computer MAC Address" }
                }
                Row {
                    id: position3
                    CheckBox {
                        id: check8
                        onTicked: {
                            check6.isTicked = "false"; check7.isTicked = "false"
                        }
                    }
                    TextInfo { id: text23; textInfo: "Use This MAC Address" }
                }
                Image { width: container.width; height: 1; source: "../images/liteblue.gif"; smooth: true }
            }

            Column {
                spacing: 10; x: scrollbar.x - 155 - 20; y: position0.y
                InputRect { id: input1; KeyNavigation.tab: input2 }
                InputRect { id: input2; KeyNavigation.tab: ipRectangle0 }
            }
            Column {
                spacing: 10; x: scrollbar.x - 155 - 20; y: position1.y
                IpRectangle { id: ipRectangle0; KeyNavigation.tab: ipRectangle1 }
                IpRectangle { id: ipRectangle1; KeyNavigation.tab: ipRectangle2 }
                IpRectangle { id: ipRectangle2; KeyNavigation.tab: ipRectangle3 }

            }
            Column {
                spacing: 10; x: scrollbar.x - 155 - 20; y: position2.y
                IpRectangle { id: ipRectangle3; KeyNavigation.tab: ipRectangle4}
                IpRectangle { id: ipRectangle4; KeyNavigation.tab: macAddress}
            }
            InputRect { id: macAddress; x: scrollbar.x - 155 - 20; y: position3.y; KeyNavigation.tab: apply }
        }
    }
    // 滚动条
    Image {
        id: scrollbar; y: image0.y; height: flickable1.height
        anchors { right: container.right }
        smooth: true; opacity: .5
        source: "../images/my-slider-bkg.png"

        // 按钮
        Image {
            id: button
            y: flickable1.visibleArea.yPosition * scrollbar.height
            height: flickable1.visibleArea.heightRatio * scrollbar.height;
            smooth: true
            source: "../images/my-slider-progress.png"
            anchors.horizontalCenter: scrollbar.horizontalCenter
            opacity: .5

            // 鼠标区域
            MouseArea {
                id: mouseArea
                anchors.fill: button
                drag.target: button
                drag.axis: Drag.YAxis
                drag.minimumY: 0
                drag.maximumY: scrollbar.height - button.height

                // 拖动
                onMouseYChanged: {
                    flickable1.contentY = button.y / scrollbar.height * flickable1.contentHeight  //button占比*flick总长
                }
            }
        }
    }
    Column {
        id: fixPart; spacing: 15; x: 10
        anchors { right: container.right; rightMargin: 10; bottom: container.bottom; bottomMargin: 10 }
        //three buttons
        Row {
            id: buttons; spacing: 10
            ButtonInfo { id: apply; btnName: "Apply"
                //onClick: cancel.bold = test.bold = "false"
            }
            ButtonInfo { id: cancel; btnName: "Cancel"
                //onClick: apply.bold = test.bold = "false"
            }
            ButtonInfo { id: test; btnName: "Test"
                //onClick: apply.bold = cancel.bold = "false"
            }
        }
    }
}






