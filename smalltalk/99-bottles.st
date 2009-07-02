#! /usr/local/bin/gst -f

Integer extend [
    "I couldn't find a reverse iteration, so I made one"
    downto: end do: block [
        |current|        
        current := self.
        
        [current >= end] whileTrue: [
            block value: current.
            current := current - 1.
        ]
    ]

    bottles [
        self = 0 ifTrue: [^ 'no more bottles of beer'].
        self = 1 ifTrue: [^ '1 bottle of beer'].
        ^ self printString, ' bottles of beer'.
    ]
]

99 downto: 1 do: [:n|
    Transcript
        cr;
        show: n bottles, ' on the wall...'; cr;
        show: 'take one down, pass it around...'; cr;
        show: (n - 1) bottles, ' on the wall.'; cr;
        cr
]
