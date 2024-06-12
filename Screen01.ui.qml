import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 400
    height: 400
    title: "Screen 01"

    ColumnLayout {
        anchors.centerIn: parent

        Text {
            text: "Calcule seu Salário"
            font.pixelSize: 20
            Layout.alignment: Qt.AlignHCenter
        }

        Text {
            text: "Salário:"
            font.pixelSize: 20
            Layout.alignment: Qt.AlignHCenter
        }

        Rectangle {
            width: 200
            height: 30
            color: "white"
            Layout.alignment: Qt.AlignHCenter

            TextInput {
                width: parent.width
                height: parent.height
            }
        }

        Text {
            text: "Desconto:"
            font.pixelSize: 20
            Layout.alignment: Qt.AlignHCenter
        }

        Rectangle {
            width: 200
            height: 30
            color: "white"
            Layout.alignment: Qt.AlignHCenter

            TextInput {
                width: parent.width
                height: parent.height
            }
        }

        Button {
            text: "Calcular"
            width: 100
            height: 40
            Layout.alignment: Qt.AlignHCenter
            onClicked: {
                // Coloque aqui a lógica para calcular o salário com o desconto
                console.log("Botão Calcular clicado!")
            }
        }
    }
}
