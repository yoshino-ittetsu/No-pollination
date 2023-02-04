extends CanvasLayer


func _ready():
    pass # Replace with function body.
    
var score = 0

func add_score_point(point):
    score += point;
    $ScoreLabel.text = "Score: %09d" % score
    
var running = false;
var elapsed = 0;

func _process(delta):
    if (running):
        elapsed += delta;
    $TimerLabel.text = "Time: %02d:%02d:%.3f" \
                     % [int(elapsed / 60 / 60), 
                        int(elapsed / 60) % 60,
                        int(elapsed) % 60 + elapsed - int(elapsed)]

func timer_start():
    running = true;

func timer_stop():
    running = false;

func timer_reset():
    elapsed = 0;
