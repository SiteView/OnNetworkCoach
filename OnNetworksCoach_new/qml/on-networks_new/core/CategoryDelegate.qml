import QtQuick 2.0

Item {
    id: delegate

    width: delegate.ListView.view.width; height: 60

    function visible1()
    {
        if(name == "internet") {flag0 = true; flag1 = flag2 = flag3 = flag4 = flag5 = false }
        if(name == "wifi setting") {flag1 = true; flag0 = flag2 = flag3 = flag4 = flag5 = false }
        if(name == "password setting") {flag2 = true; flag1 = flag0 = flag3 = flag4 = flag5 = false }
        if(name == "network map") {flag3 = true; flag1 = flag2 = flag0 = flag4 = flag5 = false }
        if(name == "router setting") {flag4 = true; flag1 = flag2 = flag3 = flag0 = flag5 = false }
        if(name == "support") {flag5 = true; flag1 = flag2 = flag3 = flag4 = flag0 = false }
    }

    Text {
        text: name
        color: delegate.ListView.isCurrentItem ? "white" : "black"
        font { family: "Helvetica"; pixelSize: 16; bold: true }
        anchors {
            left: parent.left; leftMargin: 15
            verticalCenter: parent.verticalCenter
        }
    }

    Rectangle {
        width: delegate.width; height: 1; color: "#cccccc"
        anchors.bottom: delegate.bottom
        visible: delegate.ListView.isCurrentItem ? false : true
    }
    Rectangle {
        width: delegate.width; height: 1; color: "white"
        visible: delegate.ListView.isCurrentItem ? false : true
    }

    MouseArea {
        anchors.fill: delegate
        onClicked: {
            delegate.ListView.view.currentIndex = index
            visible1();

        }
    }
}
