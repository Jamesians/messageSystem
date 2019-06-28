var _createClass = function () {
    function defineProperties(target, props) {
        for (var i = 0; i < props.length; i++) {
            var descriptor = props[i];
            descriptor.enumerable = descriptor.enumerable || false;
            descriptor.configurable = true;
            if ("value" in descriptor) descriptor.writable = true;
            Object.defineProperty(target, descriptor.key, descriptor);
        }
    }
    return function (Constructor, protoProps, staticProps) {
        if (protoProps) defineProperties(Constructor.prototype, protoProps);
        if (staticProps) defineProperties(Constructor, staticProps);
        return Constructor;
    };
}();

function _classCallCheck(instance, Constructor) {
    if (!(instance instanceof Constructor)) {
        throw new TypeError("Cannot call a class as a function");
    }
}
var Select = function () {
    function Select(el) {
        var _this = this;
        _classCallCheck(this, Select);
        this.handleSelectClick = function () {
            _this.state.isOpen ?
                _this.hideOptions() : _this.showOptions();
        };
        this.

        handleOptionClick = function (event) {
            event.stopPropagation();
            var target = event.currentTarget;
            var value = target.innerText; //target.getAttribute('data-value');
            //alert(value);

            _this.setValue(value);
            _this.hideOptions();
        };
        this.el = el;
        this.options = this.el.querySelectorAll('.option');
        this.placeholder = this.el.querySelector('.placeholder');
        this.addListeners();
        this.state = {
            isOpen: false,
            defaultValue: '课程123',
            value: ''
        };
    }
    _createClass(Select, [{
        key: 'setState',
        value: function setState(nextState) {
            this.state = Object.assign({}, this.state, nextState);
            this.update();
        }
    }, {
        key: 'addListeners',
        value: function addListeners() {
            var _this2 = this;
            this.el.addEventListener('click', this.handleSelectClick, false);
            this.options.forEach(function (el) {
                return el.addEventListener('click', _this2.handleOptionClick, false);
            });
        }
    }, {
        key: 'setValue',
        value: function setValue(

            value) {
            this.setState({
                value: value
            });
        }
    }, {
        key: 'showOptions',
        value: function showOptions()

        {
            this.setState({
                isOpen: true
            });
            this.el.classList.add('active');
        }
    }, {
        key: 'hideOptions',
        value: function hideOptions()

        {
            this.setState({
                isOpen: false
            });
            this.el.classList.remove('active');
        }
    }, {
        key: 'setPlaceholderText',
        value: function setPlaceholderText(
            value) {
            this.placeholder.innerText = value;
        }
    }, {
        key: 'update',
        value: function update()

        {
            // this.state.value ?
            // this.setPlaceholderText(this.state.value) : this.setPlaceholderText(this.state.defaultValue);
        }
    }]);
    return Select;
}();


var selects = document.querySelectorAll('.select');

selects.forEach(function (el) {
    return new Select(el);
});