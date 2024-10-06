Down/Up Counter in Verilog
////////////////////////////////  Overview  ///////////////////////////////////////////////////

This is a simple Down/Up Counter written in Verilog. The counter can be configured to count either up or down based on a control signal (mode), and it includes a reset feature to set the count back to zero.

////////////////////////////////// Features  /////////////////////////////////////////////////

>>Configurable Width: You can easily set the counter width by changing the parameter N (default is 3-bit).
>>Up/Down Counting:
>>>mode = 0 → counts up.
>>>mode = 1 → counts down.
>>Reset: The counter resets to zero when rst is active.

////////////////////////////////// How It Works  //////////////////////////////////////////////

>>Clock: The counter updates on the negative edge of the clock.
>>Reset: On the positive edge of the reset (rst), the counter goes back to 0.
>>Mode: Choose between counting up or down by setting mode to 0 or 1.
