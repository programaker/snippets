import(:javax:swing, :JFrame, :JButton, :JOptionPane)
import java:awt:GridLayout
 
button = JButton new("Press me!") do(
    addActionListener(fn(actionEvent, 
        button text = "Hello from Ioke"
    ))
  
    addActionListener(fn(actionEvent, 
        JOptionPane showMessageDialog(nil, "button pressed")
    ))
)
 
JFrame new("Ioke Swing") do(
  layout = GridLayout new(2, 2, 3, 3)
  add(button)
  setSize(300, 80)
  defaultCloseOperation = field:EXIT_ON_CLOSE
  locationRelativeTo = nil
  visible = true
)
