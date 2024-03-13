const std = @import("std");
const 

pub fn main() !u8 {
    const stdout = std.io.getStdOut().writer();
    const stderr = std.io.getStdErr().writer();
    const args = try std.process.argsAlloc(std.heap.page_allocator);

    if (args.len != 2) {
        try stderr.print("one arg expected <nock code>\n", .{});
        return 1;
    }

    for (args) |arg| {
        try stdout.print("arg {s}\n", .{arg});
    }

    return 0;
}
