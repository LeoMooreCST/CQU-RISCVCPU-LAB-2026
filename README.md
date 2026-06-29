# CQU-RISCVCPU-LAB-2026
重庆大学 RISC CPU设计实验资料包

## 目录说明

1. docs：实验指导书
   - 实验内容参考：《RISC-V32 CPU综合设计【项目内容】.pdf》；
   - 测试说明参考：《RISC-V32 CPU综合设计【测试说明】.pdf》。
2. rtl：代码目录
   - display：数码管显示文件
   - riscv_core：将自己设计的CPU代码放在这里
   - wrap：封装的AXI和外设文件（目前不涉及外设）
   - xilinx_ip：各种IP核
3. run_vivado：vivado运行目录
   - 双击CQU-RISCVCPU-LAB2026.xpr运行项目
4. sim：
   - mycpu_tb.v：仿真文件
5. syn：
   - soc_lite.xdc：约束文件
6. tests
   - assembly：测试用例汇编代码
   - coe：测试用例机器指令
   - traces：仿真对比文件

## 更新记录

- 2026.06.29：初版，支持RV32MI指令，特权指令和简单的异常处理；测试用例来源于riscv-tests

## 参考资料

- 测试用例：[riscv-software-src/riscv-tests](https://github.com/riscv-software-src/riscv-tests)
- Trace文件生成工具：[riscv-software-src/riscv-isa-sim: Spike, a RISC-V ISA Simulator](https://github.com/riscv-software-src/riscv-isa-sim)
- 《RISC-V-Reader-Chinese-v2p12017》
- 《超标量处理器设计》
