import QtQuick 2.0
import "../images"

Rectangle {
    id: rectangle
    width: 750; height: 540

    property alias central_x: 300
    property alias central_y: 200

    property alias coor_x00: 300 + 200 * Math.sin(0)
    property alias coor_x01: 300 + 200 * Math.sin(120)
    property alias coor_x02: 300 + 200 * Math.sin(240)

    property alias coor_y00: 300 + 200 * Math.cos(0)
    property alias coor_y01: 300 + 200 * Math.cos(120)
    property alias coor_y02: 300 + 200 * Math.cos(240)


    //Model0
    ListModel {
        id: model0
        ListElement {
            name: "name00"
            coordinate_x: "300"
            coordinate_y: "200"
            image: "../images/netmap/internet_b1.png"
        }
        ListElement {
            name: "name01"
            coordinate_x: "100"
            coordinate_y: "200"
            image: "../images/netmap/internet_b2.png"
        }
        ListElement {
            name: "name02"
            coordinate_x: "500"
            coordinate_y: "200"
            image: "../images/netmap/internet_b2.png"
        }
    }

    //Model1
    ListModel {
        id: model1
        ListElement {
            name: "name10"
            coordinate_x: 300
            coordinate_y: 200
            image: "../images/netmap/internet_b1.png"
        }
        ListElement {
            name: "name11"
            coordinate_x: 300 + 200 * Math.sin(60)
            coordinate_y: 200 + 200 * Math.cos(60)
            image: "../images/netmap/internet_b2.png"
        }
        ListElement {
            name: "name12"
            coordinate_x: 300 + 200 * Math.sin(300)
            coordinate_y: 200 + 200 * Math.cos(300)
            image: "../images/netmap/internet_b2.png"
        }
        ListElement {
            name: "name12"
            coordinate_x: 300 + 200 * Math.sin(180)
            coordinate_y: 200 + 200 * Math.cos(180)
            image: "../images/netmap/internet_b2.png"
        }
    }
    Component {
        id: delegate
        Rectangle {
            id: display
            Image {
                id: name
                x: coordinate_x; y: coordinate_y
                source: image
            }
        }
    }

//    ListView {
//        anchors.fill: parent
//        model: model0
//        delegate: delegate1
//    }

    Image {
        id: image00
        x: coor_x00; y: coor_y00
        source: "../images/netmap/internet_b1.png"
    }
    Image {
        id: image01
        x: coor_x01; y: coor_y01
        source: "../images/netmap/internet_b1.png"
    }
    Image {
        id: image02
        x: coor_x02; y: coor_y02
        source: "../images/netmap/internet_b1.png"
    }
}
