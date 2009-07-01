#! /usr/bin/python
# -*- coding: utf-8 -*-

import pygtk
import gtk
pygtk.require('2.0')


class Application:
    def __destroy(self, widget, data=None):
        gtk.main_quit()
        
    def __create_exit_button(self):
        button = gtk.Button('Sair')
        
        # adiciona o evento 'clicked' ao botão, que irá fechar a aplicação
        button.connect('clicked', self.__destroy)
        
        return button
        
    def __create_separator(self):
        return gtk.HSeparator()
        
    def __create_table(self):
        # rows, columns, homogeneous
        table = gtk.Table(3, 3, True)
        
        # child, left, right, top, bottom
        table.attach(self.__create_exit_button(), 1, 2, 2, 3)
        table.attach(self.__create_separator(), 0, 3, 1, 2)
        
        return table
        
    def __create_main_window(self):
        window = gtk.Window(gtk.WINDOW_TOPLEVEL)
        window.set_title('Python Gtk+ Diabolical Experiments >:}')
        window.set_border_width(10)
        window.set_size_request(500, 100)
        window.set_position(gtk.WIN_POS_CENTER_ALWAYS)
        window.set_resizable(False)
        
        # inclui o evento 'destroy' na janela principal, que fará o programa
        # terminar quando a janela for fechada
        window.connect('destroy', self.__destroy)
        
        # adiciona o botão Sair à janela
        window.add(self.__create_table())
        
        return window

    def __init__(self):
        self.main_window = self.__create_main_window()
        
    def run(self):
        # exibe a janela e todos os widgets contidos nela
        self.main_window.show_all()
        
        # inicia o loop principal da aplicação
        gtk.main()
        

# intancia e executa a aplicação        
Application().run()
