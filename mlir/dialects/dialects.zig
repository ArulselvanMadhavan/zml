const std = @import("std");

pub const arith = @import("arith.zig");
pub const func = @import("func.zig");
pub const math = @import("math.zig");
pub const scf = @import("scf.zig");
pub const tensor = @import("tensor.zig");
pub const sdy = @import("mlir/dialects/sdy");
pub const stablehlo = @import("mlir/dialects/stablehlo");

test {
    std.testing.refAllDecls(@This());
}
