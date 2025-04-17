const std = @import("std");

const c = @import("c");
const mlir = @import("mlir");
const stdx = @import("stdx");

pub fn dummy(ctx: mlir.Context, values: []mlir.Value, location: mlir.Location) mlir.Operation {
    return mlir.Operation.make(ctx, "stablehlo.return", .{
        .variadic_operands = &.{values},
        .verify = false,
        .location = location,
    });
}
