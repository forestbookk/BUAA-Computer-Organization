`timescale 1ns / 1ps
module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    input ground,
    input dig,
    output walk_left,
    output walk_right,
    output aaah,
	 output reg[31:0] count,
    output digging ); 

    parameter LEFT = 3'b000;
    parameter F_LEFT = 3'b001;
    parameter D_LEFT = 3'b010;
    parameter RIGHT = 3'b011;
    parameter F_RIGHT = 3'b100;
    parameter D_RIGHT = 3'b101;
    parameter SPLATTER = 3'b110;
    
    reg[2:0] state, next_state;
    //reg[31:0] count; 
    reg flag;
    
    always @(state, bump_left, bump_right, ground, dig) begin
        case(state) 
            LEFT:
            begin
                flag = 0;
                if(ground == 0) begin
                    next_state = F_LEFT;
                    count = 0;
                end else if(dig) begin
                    next_state = D_LEFT;
                end else if(bump_left) begin
                    next_state = RIGHT;
                end else begin
                    next_state = LEFT;
                end
            end 
            F_LEFT:
            begin
                if(ground == 1 && flag == 1) begin
                    next_state = SPLATTER;
                    count = 0;
                end else if(ground == 1 && flag == 0) begin
                    next_state = LEFT;
                    count = 0;
                end else begin
                    next_state = F_LEFT;
                    count = count + 1'b1;
                    if(count > 20) begin
                        flag = 1;
                    end else begin
                        flag = flag;
                    end
                end
            end
            D_LEFT: 
            begin
                if(ground == 0) begin
                    next_state = F_LEFT;
                    count = 0;
                end else begin
                    next_state = D_LEFT;
                end
            end
            RIGHT:
            begin
                if(ground == 0) begin
                    next_state = F_RIGHT;
                    count = 0;
                end else if(dig) begin
                    next_state = D_RIGHT;
                end else if(bump_right) begin
                    next_state = LEFT;
                end else begin
                    next_state = RIGHT;
                end
            end
            F_RIGHT:
            begin
                if(ground == 1 && flag == 1) begin
                    next_state = SPLATTER;
                    count = 0;
                end else if(ground == 1 && flag == 0) begin
                    next_state = RIGHT;
                    count = 0;
                end else begin
                    next_state = F_RIGHT;
                    count = count + 1'b1;
                    if(!flag) begin
                        if(count > 20) begin
                            flag = 1;
                        end else begin
                            flag = flag;
                        end
                    end else begin
                        flag = flag;
                    end
                end
            end
            D_RIGHT:
            begin
                if(ground == 0) begin
                    next_state = F_RIGHT;
                    count = 0;
                end else begin
                    next_state = D_RIGHT;
                end
            end
            SPLATTER:
            begin
                next_state = SPLATTER;
            end
            default: next_state = LEFT;
        endcase
    end
            
    always @(posedge clk, posedge areset) begin
        if(areset) begin
            state <= LEFT;
        end else begin
            state <= next_state;
        end
    end 
    
    //OUTPUT LOGIC
    assign aaah = (state == F_LEFT || state == F_RIGHT);
    assign walk_left = (state == LEFT);
    assign walk_right = (state == RIGHT);
    assign digging = (state == D_LEFT || state == D_RIGHT);
   
endmodule
