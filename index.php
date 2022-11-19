<?php

declare(strict_types=1);

if (in_array($_SERVER["REQUEST_URI"], ['/health', '/health/'])) {
    echo json_encode(['status' => 'OK']);
} else {
    echo '<a href="/health">Go to HEALTH</a>';
}
