extends CanvasLayer


func _ready():
    timer_restart();
    
var score = 0

var running = false;
var elapsed = 0;

func _process(delta):
    $ScoreLabel.text = "Score: %09d" % $"/root/Global".SCORE
    if (running):
        elapsed += delta;
    $TimerLabel.text = "Time: %02d:%02d:%.3f" \
                     % [int(elapsed / 60 / 60), 
                        int(elapsed / 60) % 60,
                        int(elapsed) % 60 + elapsed - int(elapsed)]
    $"/root/Global".TIME_STR = $TimerLabel.text
    if int(elapsed) % 5 == 0:
        $"/root/Global".ENEMY_SPEED += 50

func timer_start():
    running = true;

func timer_stop():
    running = false;

func timer_reset():
    elapsed = 0;

func timer_restart():
    timer_stop();
    timer_reset();
    timer_start();
    
func _on_RigidBody2D_add_score(point):
    print_debug(point)
    $"/root/Global".SCORE += point;
    $ScoreLabel.text = "Score: %09d" % $"/root/Global".SCORE
