{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 2,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 59.0, 114.0, 1000.0, 759.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 258.7096697092056, 82.58064270019531, 119.0, 20.0 ],
                    "text": "double click for reset"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 253.54837954044342, 108.0, 29.5, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "bang",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 110.0, 100.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "a",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 110.0, 180.0, 50.0, 22.0 ],
                    "text": "f 0"
                }
            },
            {
                "box": {
                    "id": "b",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 210.0, 180.0, 50.0, 22.0 ],
                    "text": "f 1"
                }
            },
            {
                "box": {
                    "id": "t1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 110.0, 140.0, 50.0, 22.0 ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "t2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 210.0, 220.0, 50.0, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "add",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 160.0, 260.0, 40.0, 22.0 ],
                    "text": "+"
                }
            },
            {
                "box": {
                    "id": "t3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 160.0, 300.0, 50.0, 22.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "print",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 210.0, 359.35482800006866, 80.0, 22.0 ],
                    "text": "print fib"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "add", 1 ],
                    "midpoints": [ 119.5, 246.0, 190.5, 246.0 ],
                    "source": [ "a", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "t3", 0 ],
                    "midpoints": [ 169.5, 285.0, 169.5, 285.0 ],
                    "source": [ "add", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "t2", 0 ],
                    "midpoints": [ 219.5, 204.0, 219.5, 204.0 ],
                    "source": [ "b", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "t1", 0 ],
                    "midpoints": [ 119.5, 132.0, 119.5, 132.0 ],
                    "source": [ "bang", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "a", 0 ],
                    "order": 1,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "b", 0 ],
                    "order": 0,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "a", 0 ],
                    "midpoints": [ 119.5, 165.0, 119.5, 165.0 ],
                    "source": [ "t1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "b", 0 ],
                    "midpoints": [ 150.5, 165.0, 219.5, 165.0 ],
                    "source": [ "t1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "a", 1 ],
                    "midpoints": [ 250.5, 246.98437488125637, 171.0, 246.98437488125637, 171.0, 177.0, 150.5, 177.0 ],
                    "order": 1,
                    "source": [ "t2", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "add", 0 ],
                    "midpoints": [ 250.5, 255.0, 169.5, 255.0 ],
                    "order": 0,
                    "source": [ "t2", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "print", 0 ],
                    "midpoints": [ 219.5, 243.0, 219.5, 243.0 ],
                    "source": [ "t2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "b", 1 ],
                    "midpoints": [ 169.5, 333.0, 270.0, 333.0, 270.0, 177.0, 250.5, 177.0 ],
                    "source": [ "t3", 0 ]
                }
            }
        ],
        "autosave": 0,
        "oscsendudpport": 9000
    }
}