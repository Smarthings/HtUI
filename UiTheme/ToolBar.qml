import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.impl 2.2

import "./"

ToolBar {
    id: control

    property color color: Theme.accent

    opacity: 1.0

    background: Rectangle {
        implicitHeight: 50
        color: Qt.rgba(Theme.accent.r, Theme.accent.g, Theme.accent.b, 1)
    }
}
