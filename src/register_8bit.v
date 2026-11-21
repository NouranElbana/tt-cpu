//Note:
//A blocking assignment updates the variable immediately when that statement executes
    //Example: A=5 B=A the simulator executes the statements in order: A become 5 then B reads the updated value of A, so B becomes 5
//A non-blocking assignment schedules an update for later in the current simulation time step
    //Example: (orginally A=2 and B=7) then we want A=5 B=A the simulator reads both and wait to update: A become 5 then B becomes 2 the old value of A
//= Blocking --> Combinational logic inside always @(*)
//<= Non-blocking --> Clocked sequential logic inside always @(posedge clk)

module register_8bit(

input clk,
input reset,
input we,
input [7:0] D,
output reg [7:0] Q

);
    always @(posedge clk) begin
        //If at clock edge it's reset then Q(ouput)=0 else if at clock edge it's write enable then Q(output)=D(Input)
        if (reset)
            Q <= 8'd0;
        else if (we)
            Q <= D;
    end


endmodule
