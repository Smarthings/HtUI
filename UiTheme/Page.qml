import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    id: page
    default property alias content: pane.contentItem
    property color color: "transparent"

    background: Rectangle {
        anchors.fill: parent
        color: page.color
    }

    Flickable {
        anchors.fill: parent
        anchors.margins: 10
        contentHeight: pane.implicitHeight
        flickableDirection: Flickable.AutoFlickIfNeeded

        Pane {
            id: pane
            width: parent.width
            padding: 10

            background: Rectangle {
                anchors.fill: parent
                color: "transparent"
            }
        }

        ScrollIndicator.vertical: ScrollIndicator { }
    }
}
