# sales_calculation.pl

sub calculate_sales {
    my ($quantity, $price) = @_;

    my $total = $quantity * $price;

    # Log total sales amount to a file
    open(my $log_fh, '>>', '/home/pavan/lib/log/agile_realtime_sales_inventory/sales.log') or die "Could not open log file: $!";
    print $log_fh "Total sales amount: $total\n";
    close($log_fh);

    return $total;
}

# Example usage
my $quantity = 10;
my $price = 20.5;

my $total_sales = calculate_sales($quantity, $price);
print "Total sales amount: $total_sales\n";

