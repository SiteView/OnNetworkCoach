import QtQuick 1.0

Image {
    id: tickBox
    property string isTicked: "false"

    signal ticked()
    //source: isTicked ? "images/tick.png" : "images/cross.png"
    source: isTicked === "true" ? "../images/check_selected.png" : "../images/check_normal.png"
    MouseArea {
        anchors.fill: parent;
        onClicked: {
           // contactModel.setProperty(index, "isTicked", !contactModel.get(index).isTicked);
            ticked()
            isTicked === "true" ? isTicked = "false" : isTicked = "true"
        }
    }
}
