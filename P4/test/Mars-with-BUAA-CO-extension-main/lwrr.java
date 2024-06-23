import mars.Globals;
import mars.ProcessingException;
import mars.ProgramStatement;
import mars.mips.hardware.AddressErrorException;
import mars.mips.hardware.RegisterFile;
import mars.mips.instructions.AdditionalInstruction;
import mars.mips.instructions.BasicInstruction;
import mars.mips.instructions.BasicInstructionFormat;
import mars.mips.instructions.SimulationCode;

public class lwrr extends BasicInstruction implements AdditionalInstruction {
//    new BasicInstruction("lw $t1,-100($t2)",
//                                 "Load word : Set $t1 to contents of effective memory word address",
//                         BasicInstructionFormat.I_FORMAT,
//                "100011 ttttt fffff ssssssssssssssss",
//                                 new SimulationCode()
//    {
//        int[] operands = statement.getOperands();
//                     try
//                     {
//                        RegisterFile.updateRegister(operands[0],
//                            Globals.memory.getByte(
//                            RegisterFile.getValue(operands[2])
//                                    + (operands[1] << 16 >> 16))
//                                            << 24
//                                            >> 24);
//                     }
//                         catch (AddressErrorException e)
//                        {
//                           throw new ProcessingException(statement, e);
//                        }


    @Override
    public void simulate(ProgramStatement statement) throws ProcessingException {
        int[] operands = statement.getOperands();
        try
        {
            RegisterFile.upda
        }
    }
}
