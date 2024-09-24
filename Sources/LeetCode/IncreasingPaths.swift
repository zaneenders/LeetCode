func paths(grid: [[Int]]) -> Int {
    var startingPoints: [Point] = []
    for (x, row) in grid.enumerated() {
        for (y, v) in row.enumerated() {
            startingPoints.append(Point(x, y, v))
        }
    }
    startingPoints.sort { l, r in
        l.value > r.value
    }
    var _pathsFound: [[Int]] = Array(
        repeating:
            Array(repeating: 0, count: grid[0].count),
        count: grid.count)
    for point in startingPoints {
        let count = _findPaths(point)
        _pathsFound[point.x][point.y] = count
    }
    var _count: Int = 0
    for row in _pathsFound {
        for c in row {
            _count += c
        }
    }
    return Int(_count)

    func _findPaths(_ point: Point) -> Int {
        var _count: Int = 0
        let v = grid[point.x][point.y]
        let neighbors: [Dir] = [.right, .left, .up, .down]
        for neighbor in neighbors {
            switch neighbor {
            case .right:
                let rx = point.x + 1
                let ry = point.y
                guard rx < grid.count else {
                    continue
                }
                let rv = grid[rx][ry]
                if rv > v {
                    _count += _pathsFound[rx][ry] + 1
                }
            case .left:
                let lx = point.x - 1
                let ly = point.y
                guard lx >= 0 else {
                    continue
                }
                let lv = grid[lx][ly]
                if lv > v {
                    _count += _pathsFound[lx][ly] + 1
                }
            case .down:
                let dx = point.x
                let dy = point.y + 1
                guard dy < grid[0].count else {
                    continue
                }
                let dv = grid[dx][dy]
                if dv > v {
                    _count += _pathsFound[dx][dy] + 1
                }
            case .up:
                let ux = point.x
                let uy = point.y - 1
                guard uy >= 0 else {
                    continue
                }
                let uv = grid[ux][uy]
                if uv > v {
                    _count += _pathsFound[ux][uy] + 1
                }
            }
        }
        return _count
    }
}

enum Dir {
    case up
    case down
    case left
    case right
}

struct Point: Hashable, Equatable {

    init(_ x: Int, _ y: Int, _ v: Int) {
        self.x = x
        self.y = y
        self.value = v
    }
    var value: Int
    let x: Int
    let y: Int
}
