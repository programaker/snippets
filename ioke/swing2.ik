import(:java:awt, :GridLayout, :BorderLayout)
import(:java:awt:event, :ActionEvent, :ActionListener)
import(:javax:swing, :JFrame, :JPanel, :JButton, :JTextField)

textField = JTextField new("Digita um trem aê...")
    
button = JButton new("Clica aê!") do(
    addActionListener(fn(actionEvent, 
        button text = textField text
    ))
)

panel = JPanel new do(
    layout = GridLayout new(2, 10)
    add(textField)
    add(button)
)

JFrame new("Ioke Swing 2") do(
    contentPane add(panel, BorderLayout field:CENTER)
    defaultCloseOperation = field:EXIT_ON_CLOSE
    setSize(500, 100)
    locationRelativeTo = nil
    visible = true
)
