import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 400
    height: 400
    title: "Screen 01"

    property string salarioInput: "" // Propriedade para armazenar o texto do salário
    property string descontoInput: "" // Propriedade para armazenar o texto do desconto

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
                id: salarioTextInput
                width: parent.width
                height: parent.height
                onTextChanged: {
                    salarioInput = text // Atualiza a propriedade quando o texto muda
                }
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
                id: descontoTextInput
                width: parent.width
                height: parent.height
                onTextChanged: {
                    descontoInput = text // Atualiza a propriedade quando o texto muda
                }
            }
        }

        Button {
            text: "Calcular"
            id: btnCalcular
            width: 100
            height: 40
            Layout.alignment: Qt.AlignHCenter
            onClicked: {
                backend.teste(salarioInput, descontoInput) // Chama a função teste() do backend Python com os dois argumentos
            }
        }
    }
}
