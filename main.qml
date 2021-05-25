import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    width: 425
    height: 940
    visible: true
    title: qsTr("Tabs")

    SwipeView {
        id: swipeView
        anchors.fill: parent

        currentIndex: tabBar.currentIndex

        Form1 {
        }

        Form2 {
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Page 1")
        }
        TabButton {
            text: qsTr("Page 2")
        }
    }
}
