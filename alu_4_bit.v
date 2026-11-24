module alu4bit (
    input  [3:0] A,
    input  [3:0] B,
    input  [3:0] S,

    output reg [7:0] Y,
    output reg Carry,
    output reg Zero
);

always @(*) begin

    // Initial values
    Y = 8'b00000000;
    Carry = 1'b0;

    case (S)

        // Arithmetic operations

        4'b0000: begin
            {Carry, Y[3:0]} = {1'b0, A} + {1'b0, B};
        end

        4'b0001: begin
            Y[3:0] = A - B;
            Carry = (A >= B);
        end

        4'b0010: begin
            Y = A * B;
        end

        4'b0011: begin
            Y[3:0] = A + 4'b0001;
            Carry = &A;
        end

        4'b0100: begin
            Y[3:0] = A - 4'b0001;
        end

        // Bitwise logic operations

        4'b0101: Y[3:0] = A & B;
        4'b0110: Y[3:0] = A | B;
        4'b0111: Y[3:0] = A ^ B;
        4'b1000: Y[3:0] = ~A;
        4'b1001: Y[3:0] = ~(A & B);
        4'b1010: Y[3:0] = ~(A | B);
        4'b1011: Y[3:0] = ~(A ^ B);

        // Shift operations

        4'b1100: begin
            Y[3:0] = A << 1;
            Carry = A[3];
        end

        4'b1101: begin
            Y[3:0] = A >> 1;
            Carry = A[0];
        end

        // Rotate operations

        4'b1110: Y[3:0] = {A[2:0], A[3]};
        4'b1111: Y[3:0] = {A[0], A[3:1]};

        default: begin
            Y = 8'b00000000;
            Carry = 1'b0;
        end

    endcase

end

// Zero flag
always @(*) begin
    Zero = (Y == 8'b00000000);
end

endmodule