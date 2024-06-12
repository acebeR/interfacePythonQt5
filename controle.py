import sys
from PyQt6.QtCore import QObject, QUrl, pyqtSlot, pyqtProperty, pyqtSignal
from PyQt6.QtGui import QGuiApplication
from PyQt6.QtQml import QQmlApplicationEngine

class Backend(QObject):
    resultadoChanged = pyqtSignal(str)

    def __init__(self):
        QObject.__init__(self)
        self._resultadoTexto = ""

    @pyqtSlot(str, str)
    def calcular(self, salarioInput, descontoInput):
        salario = float(salarioInput)
        desconto = float(descontoInput)
        resultado = self.calcularSalario(salario, desconto)
        self.resultadoTexto = f"Resultado: {resultado}"

    @pyqtProperty(str, notify=resultadoChanged)
    def resultadoTexto(self):
        return self._resultadoTexto

    @resultadoTexto.setter
    def resultadoTexto(self, value):
        if self._resultadoTexto != value:
            self._resultadoTexto = value
            self.resultadoChanged.emit(value)

    def calcularSalario(self, salario, desconto):
        return salario - desconto

if __name__ == "__main__":
    app = QGuiApplication(sys.argv)

    engine = QQmlApplicationEngine()
    backend = Backend()
    engine.rootContext().setContextProperty("backend", backend)

    engine.load(QUrl.fromLocalFile("Screen01.ui.qml"))

    if not engine.rootObjects():
        sys.exit(-1)

    sys.exit(app.exec())
