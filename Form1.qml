import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 425
    height: 940

    header: Label {
        text: qsTr("Page 1")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Label {
        text: qsTr("You are on Page 1.")
        anchors.centerIn: parent
    }
}