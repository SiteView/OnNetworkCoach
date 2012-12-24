import QtQuick 2.0

Item {
    id: container
    width: mainWindow.width - categoryButtons.width; height: mainWindow.height - categoryButtons.y
    anchors.left: categoryButtons.right
    ListModel {
        id: contactModel
        ListElement {
            name: "Computer0"
            icon: "../images/netmap/genie_b1.png"
        }
        ListElement {
            name: "Computer1"
            icon: "../images/netmap/genie_b1.png"
        }
        ListElement {
            name: "computer2"
            icon: "../images/netmap/genie_b1.png"
        }
        ListElement {
            name: "Computer3"
            icon: "../images/netmap/genie_b1.png"
        }
        ListElement {
            name: "Computer4"
            icon: "../images/netmap/genie_b1.png"
        }
        ListElement {
            name: "computer5"
            icon: "../images/netmap/genie_b1.png"
        }
    }

    Component {
        id: delegate
        Column {
            id: wrapper
            Image {
                anchors.horizontalCenter: nameText.horizontalCenter
                //width: 64; height: 64
                source: icon
            }
            Text {
                id: nameText
                text: name
                font.pointSize: 16
                color: wrapper.PathView.isCurrentItem ? "green" : "black"
            }
        }
    }

    PathView {
        anchors.fill: parent
        model: contactModel
        delegate: delegate
        path: Path {
            startX: 100; startY: 100
            PathQuad { x: 120; y: 25; controlX: 260; controlY: 75 }
            PathQuad { x: 120; y: 100; controlX: -20; controlY: 75 }
        }
    }
}
