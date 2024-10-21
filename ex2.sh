clc; clear;

% Input values
cbw = input("Enter channel bandwidth in kHz: ");  % Channel bandwidth in kHz
sbw = input("Enter spectrum bandwidth in MHz: "); % Spectrum bandwidth in MHz
N = input("Enter cells in cluster: ");            % Number of cells in the cluster
Area_cell = input("Enter area of cell: ");        % Area of one cell
SystemArea = input("Enter system area: ");        % Total system area

% Convert spectrum bandwidth from MHz to kHz
sbw = sbw * 1000;

% Calculate area of a cluster
area_cluster = N * Area_cell;

% Calculate number of clusters
NoofCluster = floor(SystemArea / area_cluster);

% Calculate total number of channels
chno = floor(sbw / cbw);

% Calculate cell capacity
CellCapacity = chno / N;

% Calculate system capacity
sys_cap = chno * NoofCluster;

% Display results
disp("Area of cluster is: " + area_cluster);
disp("Number of clusters: " + NoofCluster);
disp("Number of channels: " + chno);
disp("Cell Capacity is: " + CellCapacity);
disp("System capacity is: " + sys_cap);
