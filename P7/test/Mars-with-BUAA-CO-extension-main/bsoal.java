
/*
 * This file is a part of BUAA CO extension.
 *
 */

import mars.ProcessingException;
import mars.ProgramStatement;
import mars.mips.hardware.RegisterFile;
import mars.mips.instructions.AdditionalInstruction;
import mars.mips.instructions.BasicInstructionFormat;
import mars.mips.instructions.BranchOperation;

/**
 * An example of AdditionalInstruction.
 *
 */
public class bsoal extends BranchOperation implements AdditionalInstruction {

    private int bitAdder(int value) {
        int count = 0;
        for (int i = 0; i < 32; i++) {
            if ((value & (1 << i)) != 0) {
                count += 1;
            }
        }
        return count;
    }

    @Override
    public void simulate(ProgramStatement statement) throws ProcessingException {
        int[] operands = statement.getOperands();
        if (bitAdder(RegisterFile.getValue(operands[0])) % 2 == 1) {
            processReturnAddress(31);
            processBranch(operands[2]);
        }
    }

    @Override
    public String getExample() {
        return "bsoal $t0,$t1,label";
    }

    @Override
    public String getDescription() {
        return "Branch if $t0 has odd number of 1 in binary and link: " +
                "Set $ra to PC and branch to statement at label's address if $t0 has odd number of 1 in binary.";
    }

    @Override
    public BasicInstructionFormat getInstructionFormat() {
        return BasicInstructionFormat.I_BRANCH_FORMAT;
    }

    @Override
    public String getOperationMask() {
        return "111011 fffff sssss tttttttttttttttt";
    }
}
