import sys
from PyQt6.QtCore import QObject, QUrl, pyqtSlot
from PyQt6.QtGui import QGuiApplication
from PyQt6.QtQml import QQmlApplicationEngine


class Backend(QObject):
    def __init__(self):
        QObject.__init__(self)

    @pyqtSlot(str, str)
    def init(self, salarioInput, descontoInput):
        tela = {'salario':salarioInput, 'desconto': descontoInput}
        print(f"Salário digitado: {salarioInput}")
        print(f"Desconto digitado: {descontoInput}")
        print(tela)

if __name__ == "__main__":
    app = QGuiApplication(sys.argv)

    engine = QQmlApplicationEngine()
    backend = Backend()
    engine.rootContext().setContextProperty("backend", backend)

    engine.load(QUrl.fromLocalFile("Screen01.ui.qml"))

    if not engine.rootObjects():
        sys.exit(-1)

    sys.exit(app.exec())

