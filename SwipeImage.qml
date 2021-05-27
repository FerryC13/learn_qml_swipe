import QtQuick 2.0

Rectangle {
    property Text swipeText: instruction
    height: 200
    width: 100
    color: "transparent"



    Image {
        id: swipeIcon
        anchors.right: parent.right
        opacity: 1
        fillMode: Image.PreserveAspectFit
        width:100
        source: "qrc:/UI/Assets/arrow_transparent.png"
    }
    Image {
        id: swipeIcon2
        anchors {
            rightMargin: -70
            right: swipeIcon.left
        }
        opacity: 1
        fillMode: Image.PreserveAspectFit
        width:100
        source: "qrc:/UI/Assets/arrow_transparent.png"
    }
    Image {
        id: swipeIcon3
        anchors {
            rightMargin: -70
            right: swipeIcon2.left
        }
        opacity: 1
        fillMode: Image.PreserveAspectFit
        width:100
        source: "qrc:/UI/Assets/arrow_transparent.png"
    }
    Text {
        id: instruction
        text: qsTr("Swipe right to continue...")
        font.family: "Lato Semibold"
        height : 70
        width : 80
        fontSizeMode: Text.Fit
        font.pixelSize: 12
        minimumPixelSize: 8
        wrapMode: Text.Wrap
        anchors {
            right: parent.right
            rightMargin: 30
            top: swipeIcon3.bottom
            topMargin: -20

        }
    }
}
