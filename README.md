# Library-Bot: Autonomous Navigation Using APF in a Simulated Library Environment

A MATLAB-based multi-robot navigation system using the Artificial Potential Field (APF) algorithm, simulating three autonomous robots navigating a university library environment with static and dynamic obstacles.

## How It Works

1. The library environment is modelled with around 50 static obstacles across three study zones — Silent, Quiet, and Collaborative — including desktops, Workstations, bookshelves, seating areas, and a water dispenser
2. Four dynamic obstacles simulate individuals moving through the library in real time
3. Repulsive forces are computed using exponential decay functions tuned individually per obstacle type
4. Attractive forces toward delivery goals are modelled using linear distance functions
5. Three robots navigate simultaneously, dynamically switching between eight delivery goals upon arrival
6. The combined potential field landscape and robot trajectories are visualised in real time using MATLAB's 3D surface plotting

## Tech Stack

| Component | Technology |
|---|---|
| Programming Language | MATLAB |
| Navigation Algorithm | Artificial Potential Field (APF) |
| Visualisation | MATLAB surfc — real-time 3D surface plotting |
| Environment Modelling | Custom coordinate-based obstacle mapping |

## Key Features

- Multi-robot simultaneous navigation — 3 robots operating concurrently
- Dynamic obstacle avoidance — 4 moving obstacles recalculated every iteration
- Real-time visualisation of the potential field landscape
- Individual obstacle force tuning for realistic environment modelling
- Dynamic goal switching — robots reassigned to next goal upon delivery completion

## Known Limitations

- Robots are modelled as point masses — physical dimensions not accounted for
- Local minima are a known limitation of the APF method and may occasionally affect navigation
- Environment is a simulation — results reflect idealised conditions
