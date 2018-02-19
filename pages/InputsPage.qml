import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

import "../UiTheme/"

ScrollablePage {
    anchors.fill: parent
    property string titleHeader: qsTr("Inputs")

    Column {
        width: parent.width
        height: parent.height
        spacing: 20

        Spacing {
            GroupBox {
                width: parent.width
                padding: 10
                title: "TextField"
                radius: 5

                Column {
                    width: parent.width
                    spacing: 10

                    TextField {
                        width: parent.width
                        placeholderText: "TextField"
                    }

                    TextField {
                        width: parent.width
                        placeholderText: "TextField darker"
                        darker: true
                    }

                    TextField {
                        width: parent.width
                        placeholderText: "TextField flat"
                        flat: true
                    }
                }
            }
        }

        Spacing {
            GroupBox {
                width: parent.width
                padding: 10
                title: "ComboBox"
                radius: 5

                Column {
                    width: parent.width
                    spacing: 10

                    ComboBox {
                        width: parent.width
                        model: ["Opção 1", "Opção 2", "Opção 3", "Opção 4"]
                    }
                }
            }
        }

        Spacing {
            GroupBox {
                width: parent.width
                padding: 10
                title: "SpinBox"
                radius: 5

                Column {
                    width: parent.width
                    spacing: 10

                    SpinBox {
                        width: parent.width
                        value: 30
                        editable: true
                    }

                    SpinBox {
                        width: parent.width
                        value: 50
                    }
                }
            }
        }

        Spacing {
            GroupBox {
                width: parent.width
                padding: 10
                title: "TextArea"
                radius: 5

                Column {
                    width: parent.width
                    spacing: 10

                    ScrollView {
                        width: parent.width
                        height: 50

                        TextArea {
                            placeholderText: "Textarea"
                        }
                    }

                    ScrollView {
                        width: parent.width
                        height: 50

                        TextArea {
                            placeholderText: "Textarea flat"
                            flat: true
                        }
                    }

                    ScrollView {
                        width: parent.width
                        height: 50

                        TextArea {
                            placeholderText: "Textarea without border"
                            noBorder: true
                        }
                    }
                }
            }
        }
    }
}
