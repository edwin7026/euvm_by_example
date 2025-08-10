// tag::includes[]
module hello_tb;

import std.stdio : writeln;

import esdl;
import uvm;
// end::includes[]

// tag::entity[]
class DutEntity : Entity {}
// end::entity[]

// tag::testbench[]
class HelloTestbench: uvm_tb {
    DutEntity dut;
}
// end::testbench[]

// tag::test[]
class HelloTest : uvm_test {

//tag::factory_reg[]
    mixin uvm_component_utils;
// end::factory_reg[]
    
    this(string name, uvm_component parent) {
        super(name, parent);
    }

    override void buld_phase(uvm_phase phase) {
        super.build_phase(phase);
    }

    override void run_phase(uvm_phase phase) {
        super.run_phase(phase);
        writeln("Hello World!");
    }
}
// end::test[]

// tag::main[]
void main(string[] args) {
    auto tb = new HelloTestbench;
    tb.elaborate("tb", args);
    tb.start();
}
// end::main[]