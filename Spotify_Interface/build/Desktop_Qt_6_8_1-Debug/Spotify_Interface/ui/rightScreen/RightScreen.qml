import QtQuick 2.15

Item {

    anchors.left: parent.left
    Row{
        spacing: 10
        anchors.left: parent.left


        Image {
            id: libraryIcon
            source: "qrc:/assets/library.png"
            height: 32
            width: 32
        }
        Text{
            text: "Your Library"
            font.pixelSize: 30
            anchors.verticalCenter: libraryIcon.verticalCenter
        }
    }

}
