import QtQuick 1.1

BorderImage {
    id: mainBtn
    width: 220; height: 220

    property string initialImage: ""
    property string hoverImage: ""
    property string selectedImage: ""
    property string image: ""


    signal clicked();
    source: "../images/" + image + ".png"

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onEntered: image = hoverImage
        onExited: image = initialImage
        onClicked: {
            mainBtn.clicked()
        }
    }

    //    var buttonid
    function buttonimagechange(buttonid)
    {
        image = "buttonid" + "1";
        initialImage = "buttonid" + "1";
        hoverImage = "buttonid" + "2";
        selectedImage = "buttonid" + "3";
    }
}
