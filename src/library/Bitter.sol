pragma solidity 0.8.10;

library Bitter {
    /// @dev update the value of array at a partocular index
    /// @param _array of elements represented in hex
    /// @param _index of element that you want to update
    /// @param _num to update in place of the index value
    /// @return hexa is the converted end result to hex
    function updateAtIndex(
        uint256 _array,
        uint256 _index,
        uint256 _num
    ) internal pure returns (uint256) {
        uint256 shiftBy = _index << 2;
        uint256 hollow = _array & (0xffffff ^ (0xf << shiftBy));
        hollow |= (_num << shiftBy);
        return hollow;
    }

    /// @dev retrieve value from a particular index via bitshifting
    /// @param _array of elements represented in hex
    /// @param _index of element that you want to fetch
    /// @return the fetched element.
    function getValueAtIndex(uint256 _array, uint256 _index)
        internal
        pure
        returns (uint256)
    {
        return (_array >> (_index << 2)) & 0xf;
    }

    function swapValues(
        uint256 _array,
        uint256 _index1,
        uint256 _index2
    ) internal pure returns (uint256) {
        uint256 num1 = getValueAtIndex(_array, _index1);
        uint256 num2 = getValueAtIndex(_array, _index2);
        _array = updateAtIndex(_array, _index1, num1);
        _array = updateAtIndex(_array, _index2, num2);

        return _array;
    }
}
