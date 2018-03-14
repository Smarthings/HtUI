import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

import "../UiTheme/"

ScrollablePage {
    width: parent.width
    height: window.height - window.header.height

    property int header_height: 0
    property string titleHeader: qsTr("Sliders")
    color: Theme.background

    Column {
        width: parent.width
        height: parent.height
        spacing: 20

        Spacing {
            GroupBox {
                width: parent.width
                padding: 10
                radius: 5
                title: "Horizontal"

                Column {
                    width: parent.width
                    spacing: 20

                    Slider {
                        width: parent.width
                        value: 0.4
                    }

                    RangeSlider {
                        width: parent.width

                        first.value: 0.25
                        second.value: 0.75
                    }
                }
            }
        }

        Spacing {
            GroupBox {
                width: parent.width
                padding: 10
                radius: 5
                title: "Vertical"

                Column {
                    width: parent.width
                    spacing: 20

                    RowLayout {
                        width: parent.width

                        Slider {
                            orientation: Qt.Vertical
                            value: 0.3
                        }

                        RangeSlider {
                            orientation: Qt.Vertical

                            first.value: 0.25
                            second.value: 0.75
                        }
                    }
                }
            }
        }
    }
}
