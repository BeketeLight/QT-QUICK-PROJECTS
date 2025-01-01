import QtQuick 2.15

Item {
    id:root
    anchors.fill: parent

    Flow{
        width: parent.width
        spacing: 10

        Image {
            id: libraryIcon
            source: "qrc:/assets/library.png"
            height: 32
            width: 32
            fillMode: Image.PreserveAspectFit
        }
        Text{
            text: "Your Library"
            font.pixelSize: 30
        }
    }

}
